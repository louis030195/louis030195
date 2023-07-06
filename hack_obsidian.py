from github import Github
from github.Commit import Commit
import sys
import urllib.parse
TOKEN = sys.argv[1]
g = Github(TOKEN)
repo = g.get_repo("louis030195/brain")
things = set()

import openai
import requests

def list_models():
    headers = {
        "Authorization": "Bearer patBrBkdsFw0ArVlF.89a5669f5fd05d20e1d0f77216d072d929b13a215c0471b9a1a2d764537cbe8d"
    }
    response = requests.get("https://api.airtable.com/v0/appwJMZ6IAUnKpSwV/all", headers=headers)
    data = response.json()

    records = [
        {
            "id": record['id'],
            "object": "model",
            "owned_by": record['fields'].get("contact", "anonymous"),
            "permission": ["read"],
            "createdTime": record['createdTime'],
            **record['fields']
        }
        for record in data['records']
        if "url" in record['fields']
    ]

    return {"data": records}

# USAGE
list_models_response = list_models()

openai.api_key = "EMPTY"
openai.api_base = list_models_response['data'][0]['url']

skipped = 0
m = 10

def alpaca_prompt(inputs: str):
    return f"""### Instruction:
You are a rigorous epistemologist who summarize chunks of notes into a very publicly readable format.
Don't change too much the content, your main job is to fix the grammar and make it more readable.
BTW, you receive chunks of a note and create summaries for each chunk, later we will ask you to combine them into a single note
so you must make sure that the summary you return can be used to be merged into a single summary.
You are not politically correct and you don't care about people's feelings, your life purpose is to tell the truth.
You only say the summary, nothing else.
### Input:
{inputs}
### Response:"""

def try_or_continue(content):
    texts = []
    chunks = [content[i:i+30] for i in range(0, len(content), 30)]
    for chunk in chunks:
        try:
            completion = openai.Completion.create(
                model=list_models_response['data'][0]['model'],
                prompt=alpaca_prompt(chunk),
                max_tokens=200,
            )
            text = completion.choices[0].text
            if not text: raise Exception("empty text")
            texts.append(text)
            break
        except Exception as e:
            return None
    return " ".join(texts).strip()  # join all chunks' summaries

for a in repo.get_commits()[0:m+skipped]:
    a: Commit = a
    brain_food = []
    links = []
    for file in a.files:
        content = repo.get_contents(file.filename, ref=a.sha).decoded_content.decode('utf-8', errors='replace')
        if "publish: true" not in content:
            continue

        summary = try_or_continue(content)
        # summarize the summaries chunks of the note
        if summary and len(summary) < 2000:
            summary = try_or_continue(summary)
        if not summary:
            # print("damn failed to summarize louis shower thoughts", content)
            continue
        links.append(f'<li><a href="https://brain.louis030195.com/{urllib.parse.quote(file.filename)}">{file.filename}</a></li>')
        brain_food.append(summary)

    if len(brain_food) == 0:
        skipped += 1
        continue
    lis = "\n".join(brain_food)
    links_str = "\n".join(links)
    output = f"""
    <div class="highlight-text" style="margin-left: auto; margin-right: auto; min-width: 280px; max-width: 540px; text-align: left; padding-left: 34px; padding-right: 34px; padding-top: 30px; padding-bottom: 12px; white-space: normal;">
        <span style="background-color: #000000; line-height: 2; padding-bottom: 7px; padding-top: 3px; font-size: 14px; white-space: normal;">
            <ul>
{lis}
            </ul>
        </span>
        <span style="background-color: #000000; line-height: 2; padding-bottom: 7px; padding-top: 3px; font-size: 14px; white-space: normal;">
            <ul>
{links_str}
            </ul>
        </span>
        <div style="font-family: Helvetica, Arial, sans-serif;">
            <div style='font-size: 14px; margin-bottom: 0; margin-top: 10px; font-family: "Raleway", "HelveticaNeue", "Helvetica Neue", Helvetica, Arial, sans-serif; white-space: normal; font-display: swap;'>
                <p style="margin-bottom: 0; color: #9f8e7d">{a.commit.message}</p>
            </div>
        </div>
    </div>
    """
    things.add(output)
things = list(things)
things_as_str = "\n".join(things)
if not things_as_str:
    # say "no brain food today"
    things_as_str = """
    <div class="highlight-text" style="margin-left: auto; margin-right: auto; min-width: 280px; max-width: 540px; text-align: left; padding-left: 34px; padding-right: 34px; padding-top: 30px; padding-bottom: 12px; white-space: normal;">
        <div style="font-family: Helvetica, Arial, sans-serif;">
            <div style='font-size: 14px; margin-bottom: 0; margin-top: 10px; font-family: "Raleway", "HelveticaNeue", "Helvetica Neue", Helvetica, Arial, sans-serif; white-space: normal; font-display: swap;'>
                <p style="margin-bottom: 0; color: #9f8e7d">no brain dump from louis today 😭</p>
            </div>
        </div>
    </div>
    """
div = f"""
<span style="background-color: #000000; line-height: 2; padding-bottom: 7px; padding-top: 3px; font-size: 14px; white-space: normal;">
    ℹ️ this is generated by a [LLM](https://motley-ai.vercel.app) that read my latest obsidian.md notes
</span>
<div class="some-highlights" style="display: flex;
    margin-left: -50vw;
    left: 50%;
    overflow-x: scroll;
    width: 100vw;
    position: relative; margin-top: 6rem;">
    {things_as_str}
</div>
"""
print(div)

