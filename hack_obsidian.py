from github import Github
from github.Commit import Commit
import sys
import urllib.parse
TOKEN = sys.argv[1]
g = Github(TOKEN)
repo = g.get_repo("louis030195/brain")
excludeds = [
    ".obsidian", "css", "Private", ".jpeg", ".png", 
    ".jpg", "Images", ".gitignore", ".mp4", "Excallidraw",
    ".vault-stats", "Readwise Syncs",
]
includeds = [".md"]
things = []
"""
mega hack
"""
skipped = 0
# TODO: filter out files containing "publish: false"
for a in repo.get_commits()[0:5+skipped]:
    a: Commit = a
    lis_list = [f'                    <li><a href="https://brain.louis030195.com/{urllib.parse.quote(f.filename)}">{f.filename}</a></li>' for f in a.files
        if all([e not in f.filename for e in excludeds]) and
        # skip deletions
        f.status != "removed"
    ]
    if len(lis_list) == 0:
        skipped += 1
        continue
    lis = "\n".join(lis_list)
    output = f"""
    <div class="highlight-text" style="margin-left: auto; margin-right: auto; min-width: 280px; max-width: 540px; text-align: left; padding-left: 34px; padding-right: 34px; padding-top: 30px; padding-bottom: 12px; white-space: normal;">
        <span style="background-color: #000000; line-height: 2; padding-bottom: 7px; padding-top: 3px; font-size: 14px; white-space: normal;">
            <ul>
{lis}
            </ul>
        </span>
        <div style="font-family: Helvetica, Arial, sans-serif;">
            <div style='font-size: 14px; margin-bottom: 0; margin-top: 10px; font-family: "Raleway", "HelveticaNeue", "Helvetica Neue", Helvetica, Arial, sans-serif; white-space: normal; font-display: swap;'>
                <p style="margin-bottom: 0; color: #9f8e7d">{a.commit.message}</p>
            </div>
        </div>
    </div>
    """
    things.append(output)

things_as_str = "\n".join(things)
div = f"""
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
