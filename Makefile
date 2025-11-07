list:
	@echo "  - install: install required npm packages for this project"
	@echo "  - dev: run the astro dev server, featuring live reload on changes"
	@echo "  - build: build the astro project to the dist/ directory"
	@echo "  - build-debug: build the astro project with the debug flag on"
	@echo "  - build-deploy: build the astro project and deploy the contents of dist/"
	@echo "  - deploy: deploy the contents of dist/"
	@echo "  - clean: removed all contents from the dist/ directory"

install:
	npm install
	npm audit fix

dev:
	npm run dev

build:
	npm run build

build-debug:
	npm run build -- --verbose

build-deploy: build deploy

deploy:
	rsync -aP dist/ linuxuser@hector:/home/linuxuser/docker/philcryer.com/html
	ssh linuxuser@hector -t 'cd docker/philcryer.com; docker compose down; docker compose up -d --remove-orphans --force-recreate'

clean:
	rm -rf dist/*
