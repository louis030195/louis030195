# Find [START] in README.md and replace it with MEMORY_STREAM
import re
import os
import sys
import requests
MEMORY_STREAM = sys.argv[1]
with open('README.md', 'r') as f:
    content = f.read()
    content = re.sub(r'\[START\]', MEMORY_STREAM, content)
    # query my ouraring api and write my health status after my obsidian outputs
    response = requests.post(
        "https://europe-west1-louis030195-256110.cloudfunctions.net/ega_public",
    )
    response_json = response.json()
    content += "\n\n"
    content += "### My Health Status (ouraring.com) - " + str(response_json["day"]) + "\n"
    content += "Today's overall readiness score: " + str(response_json["daily_readiness_score"]) + "\n"
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