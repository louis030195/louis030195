# Find [START] in README.md and replace it with MEMORY_STREAM
import re
import os
import sys
MEMORY_STREAM = sys.argv[1]
with open('README.md', 'r+') as f:
    content = f.read()
    content = re.sub(r'\[START\]', MEMORY_STREAM, content)
    f.write(content)