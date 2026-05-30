.PHONY: serve build deploy clean install

install:
	pip install -r requirements.txt

serve:
	mkdocs serve

build:
	mkdocs build

deploy:
	mkdocs gh-deploy

clean:
	rm -rf site/
