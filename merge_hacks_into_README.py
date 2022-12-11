# Find [START] in README.md and replace it with MEMORY_STREAM
import re
import os
import sys
import requests
MEMORY_STREAM = sys.argv[1]
with open('README.md', 'r+') as f:
    content = f.read()
    # query my ouraring api and write my health status after my obsidian outputs
    response = requests.post(
        "https://europe-west1-louis030195-256110.cloudfunctions.net/ega_public",
    )
    try:
        response_json = response.json()
        MEMORY_STREAM += "\n\n"
        MEMORY_STREAM += "### ❤️‍🩹 My Health Status (ouraring.com) - " + str(response_json["day"]) + "\n"
        MEMORY_STREAM += "Today's overall readiness score: " + str(response_json["daily_readiness_score"]) + "\n"
    except:
        print("🙈fail ouraring 🙈: " + str(response))
    try:
        content = re.sub(r'\[START\]', MEMORY_STREAM, content)
        f.write(content)
    except:
        print("🙈fail regex 🙈")


