# philcryer.com
 
This is the code for my personal homepage, [philcryer.com](http://philcryer.com), re-built in 2025 with [Astro](https://astro.build/), and the theme [ShareYourLinks](https://astro.build/themes/details/shareyourlinks/).
 
## Build
 
* Install `git`
* Checkout the code
 
```
git clone https://github.com/philcryer/philcryer.com.git
cd philcryer
```

* Install `nodejs` and `npm`
* Install required `nodejs` components for the project
 
```shell
npm install
```
 
* Run dev site, which will automatically rebuild when it senses any file changes
 
```shell
npm run dev
```
 
* View the site in your browser, by default it will appear at [http://localhost:4321](http://localhost:4321), any changes to the source files will be reloaded automatically in your browser
 
> [!NOTE]
> To use this project for yourself, edit the content of `src/data/userData.js` with your details, and source icons from [Iconify Design](https://iconify.design/)
 
* Build the site
 
```shell
npm run build
```
 
* The files are output to the `dist/` directory, which you can then deploy to a webserver, see the Makefile for a deploy example
 
## Makefile
 
The included Makefile handles a lot of the npm tasks, including building and deploying to my server. You'll need to change those steps for your environment, but the other ones are helpful. 

* Install `make`
* Run make without any arguments to see all of its abilities
 
```sh
make
  - install: install required nodejs components for the project
  - dev: run the astro dev server, viewable in a browser, featuring live reload on file changes
  - build: build the astro project to the dist/ directory
  - build-debug: build the astro project with the debug flag on
  - build-deploy: build the astro project and deploy the contents of dist/ to your server
  - deploy: deploy the contents of dist/ to your server
```
 
## TODO
 
* Build a footer with the date, a link to this github page, and a short build hash linked to the commit `npm` used to build; reproducible builds FTW!
 
```shell
git rev-parse --short HEAD
```
 
* Add a terms/conditions page
* Add a privacy policy page
  
## License
 
[MIT License](https://github.com/philcryer/philcryer.com/blob/main/LICENSE)
 
### Thanks
