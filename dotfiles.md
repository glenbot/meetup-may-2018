footer: https://github.com/glenbot
slidenumbers: true

# Automating small stuff with Python

Learn how to create your own `dotfiles` repository with small scripts that help you with your day to day tasks

## Glen Zangirolami
### https://github.com/glenbot/meetup-may-2018

---

# What's a dotfile from a community standpoint?

It's an analogy for your programming setup. This might include:

* your bash prompt
* helper scripts
* `.bashrc`

---

# What's a dotfile from a literal standpoint?

* A file on your computer that begins with a `.`
* Used to signify that it's a file you shouldn't mess with unless you know stuff
* Can be hidden by file managers
* Hidden by `ls` unless you add the flag `-a`
* Can be used to control order. You may want the file listed somewhere near the top of `ls -al`

---

# Organization of dotfiles repository

Names here are subjective

- dotfiles (main directory)
  - scripts (a collection of scripts)
  - bash (a collection of bash dotfiles)
  - Makefile (quick install of your dotfiles)

---

# Tech we'll make use of today

- Python
- Docker
- make
- bash

---

# Python script 1: Easy creation of uuids

```python
#!/usr/bin/env python3
import uuid

print(uuid.uuid4().hex)
```

---

# Python script 2: Conversion of return carriage and newlines into literal newlines

```python
#!/usr/bin/env python3
import sys

content = sys.stdin.read()

# replace newlines
content = content.split('\n')
print('\\n'.join(content))
```

---

# Code & Perilous Live Demo


