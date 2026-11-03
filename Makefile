install:
	pip install --upgrade pip && pip install -r requirements.txt

test:
	#python -m pytest -vv --cov=main --cov=calCLI --cov=mylib test_*.py

format: 
	#black *.py mylib/*.py

lint:
	#pylint

container-lint:
	docker run --rm -i hadolint/hadolint < Dockerfile

refractor: format lint

deploy:
	#deploy goes here

all:
	install test lint format deploy
