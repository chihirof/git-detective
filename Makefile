# Makefile

VENV = venv
PYTHON = $(VENV)/bin/python
PIP = $(VENV)/bin/pip
PYTEST = PYTHONPATH=. $(VENV)/bin/pytest

.PHONY: test install clean

install:
	python3 -m venv $(VENV)
	$(PIP) install -r requirements.txt

test: install
	$(PYTEST)
