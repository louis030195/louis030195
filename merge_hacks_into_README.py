# Find [START] in README.md and replace it with MEMORY_STREAM
import re
import os
import sys
import requests
LANGA_API_KEY = sys.argv[1]
MEMORY_STREAM = sys.argv[2]
with open('README.md', 'r') as f:
    content = f.read()

    
    try:
        # 10% chance of generating new ones
        import math
        import random
        should_generate = math.floor(random.random() * 10) == 0
        base_url = "https://api.langa.me/v1"

        def r_to_cs(results):
            return "\n".join([" - " + e["conversation_starter"]["en"] for e in results])

        if not should_generate:
            # GET /conversation/collection
            response = requests.get(f"{base_url}/conversation/collection", headers={"X-Api-Key": LANGA_API_KEY}).json()
            collection = [e for e in response["results"] if e["name"] == "big talks"][0]
            # GET /conversation/collection/{collection_id}/starter
            response = requests.get(
                f"{base_url}/conversation/collection/{collection['id']}/starter",
                headers={"X-Api-Key": LANGA_API_KEY},
            ).json()
            # shuffle 3 random ones
            cs = r_to_cs(random.sample(response["results"], 3))

        else:
            response = requests.post(
                f"{base_url}/conversation/starter",
                headers={
                    "Content-Type": "application/json",
                    "X-Api-Key": LANGA_API_KEY,
                },
                json={
                    "topics": ["big talk", "personal"],
                    "limit": 3,
                },
            ).json()
            cs = r_to_cs(response)
        content = re.sub(r'\[LANGA\]', cs, content)
    except Exception as e:
        print("🙈fail langa 🙈: " + str(e))
 
with open('README.md', 'w') as f:
    f.write(content)