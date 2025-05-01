# philcryer.com

This is the code for my personal homepage, [philcryer.com](http://philcryer.com), re-built in 2025 with [Astro](https://astro.build/), and the theme [ShareYourLinks](https://astro.build/themes/details/shareyourlinks/).

## Build

* install git
* checkout the code

```
git clone https://github.com/philcryer/philcryer.com.git
cd philcryer
```

* install nodejs + npm
* install nodejs components for the project

```shell
cd ShareYourLinks
npm install
```

* run dev site, which will auto rebuild when any files change

```shell
npm run dev
```

* build site

```shell
npm run build
```

* view the site in the `dist/` directory and deploy those files

* view (short) build number

```shell
git rev-parse --short HEAD
```

## Makefile

I have an included Makefile that handles a lot of the npm tasks, and the deployment to my server. You'll need to change the deploy steps, but the other ones are helpful. Run make without any arguments to see what it can do

```sh
make
  - install: install needed npm packages for this project
  - dev: run the astro dev server, featuring live reload on changes
  - build: build the astro project to the dist/ directory
  - build-debug: build the astro project with the debug flag on
  - build-deploy: build the astro project and deploy the contents of dist/
  - deploy: deploy the contents of dist/
```

## License

[MIT License](https://github.com/philcryer/philcryer.com/blob/main/LICENSE)

## TODO

* add terms/conditions 
* add privacy policy

### Thanks
