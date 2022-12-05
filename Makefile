install:
	poetry install

test:
	poetry run pytest

test-coverage:
	poetry run pytest --cov=hexlet_pytest --cov-report xml

lint:
	poetry run flake8 hexlet_my_first_workflow

selfcheck:
	poetry check

check:
	selfcheck test lint

build: 
	check poetry build

say-hello:
	printf "Hello, World!\n"

.PHONY: install test lint selfcheck check build