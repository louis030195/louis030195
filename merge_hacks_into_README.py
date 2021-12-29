# Find [START] in README.md and replace it with MEMORY_STREAM
import re
import os
with open('README.md', 'r+') as f:
    content = f.read()
    content = re.sub(r'\[START\]', os.environ['MEMORY_STREAM'], content)
    f.write(content)