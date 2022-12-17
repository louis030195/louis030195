# Find [START] in README.md and replace it with MEMORY_STREAM
import re
import os
import sys
import requests
LANGA_API_KEY = sys.argv[1]
MEMORY_STREAM = sys.argv[2]
with open('README.md', 'r') as f:
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
    except:
        print("🙈fail merge 🙈")

    
    try:
        r = requests.post(
            "https://api.langa.me/v1/conversation/starter",
            headers={
                "Content-Type": "application/json",
                "X-Api-Key": LANGA_API_KEY,
            },
            json={
                "topics": ["big talk", "personal"],
                "limit": 4,
            },
        )
        request_json = r.json()
        cs = "\n".join([" - " + e["conversation_starter"]["en"] for e in request_json["results"]])
        content = re.sub(r'\[LANGA\]', cs, content)
    except Exception as e:
        print("🙈fail langa 🙈: " + str(e))
#     {'day': '2022-09-10',
#  'daily_readiness_score': 75,
#  'temperature_deviation': -0.1,
#  'temperature_trend_deviation': 0.17,
#  'timestamp': '2022-09-10T00:00:00+00:00',
#  'daily_readiness_activity_balance': 34.0,
#  'daily_readiness_body_temperature': 100,
#  'daily_readiness_hrv_balance': 86.0,
#  'daily_readiness_previous_day_activity': 82,
#  'daily_readiness_previous_night': 76,
#  'daily_readiness_recovery_index': 100,
#  'daily_readiness_resting_heart_rate': 100,
#  'daily_readiness_sleep_balance': 58.0}
        
with open('README.md', 'w') as f:
    f.write(content)