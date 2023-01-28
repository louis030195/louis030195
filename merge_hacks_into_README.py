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
        content = re.sub(r'\[START\]', MEMORY_STREAM, content)
    except:
        print("🙈fail merge 🙈")

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