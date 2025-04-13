list:
	@echo "All commands:"
	@echo "  - install: install all npm packages"
	@echo "  - dev: run astro dev server"
	@echo "  - build: build astro project"
	@echo "  - build-verbose: build astro project with debug"
	@echo "  - build-deploy: build astro project for and deploy"
	@echo "  - deploy: deploy built astro project"

install:
	npm install
	npm audit fix

dev:
	npm run dev

build:
	npm run build

build-verbose:
	npm run build -- --verbose

build-deploy:
	npm run build
	rsync -aP dist/ linuxuser@hector:/home/linuxuser/docker/philcryer-com/html
	ssh linuxuser@hector -t 'cd docker/philcryer-com; docker compose down; docker compose up -d --remove-orphans --force-recreate'

deploy:
	rsync -aP dist/ linuxuser@hector:/home/linuxuser/docker/philcryer-com/html
	ssh linuxuser@hector -t 'cd docker/philcryer-com; docker compose down; docker compose up -d --remove-orphans --force-recreate'
