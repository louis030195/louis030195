import requests
from bs4 import BeautifulSoup


URL = 'https://readwise.io/@louis'
html_text = requests.get(URL).text
soup = BeautifulSoup(html_text, 'html.parser')
# find all div with class "some-highlights"
divs = soup.find_all('div', class_='some-highlights')
print(str(divs[0]).replace('span style="background-color: #fff2ac', 'span style="background-color: transparent').replace('<p style="margin-bottom: 0; font-size: 15px; margin-bottom: 2px; color: black">', '<p style="margin-bottom: 0; font-size: 15px; margin-bottom: 2px; color: #9f8e7d">'))
