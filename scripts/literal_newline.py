#!/usr/bin/env python3
import sys

content = sys.stdin.read()

# replace newlines
content = content.split('\n')
print('\\n'.join(content))
