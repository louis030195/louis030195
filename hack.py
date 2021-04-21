import requests
from bs4 import BeautifulSoup


URL = 'https://readwise.io/@louis'
html_text = requests.get(URL).text
soup = BeautifulSoup(html_text, 'html.parser')
# divs = soup.find_all("div", {"class": "highlight-text"})
divs = soup.find_all("div", {"class": "some-highlights"})
print(str(divs[0]).replace('span style="background-color: #fff2ac', 'span style="background-color: #000000'))
