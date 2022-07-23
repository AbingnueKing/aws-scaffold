install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

format:
	black *.py

link:
	pylint --disable=R,C hello.py

test:
	python -m pytest -v --cov=hello test_hello.py

all: install lint test