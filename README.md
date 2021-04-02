Node Image for the DSCR
=======================


![Docker version](https://img.shields.io/badge/DOCKER-blue?style=for-the-badge)
![Docker version](https://img.shields.io/badge/DOCKER-blue?style=for-the-badge)
![Docker version](https://img.shields.io/badge/DOCKER-blue?style=for-the-badge)

### Description

Node images. Node Image. Bake me a Node Image.

> No one reads this shit anyway. 


## TL;DR

```sh
$ docker run --rm gcr.io/darksociety-containers/node:14-alpine node
```

### Docker Compose
```sh
$ curl -link > docker-compose.yml
$ docker-compose up -d
```

## Facts

 * Version 0.1
 * [Repository on GitHub](https://github.com/thedarksociety/docker-node)
 

Getting Started
---------------

Here is some information.

### Why use Dark Society Images?
 * One
 * Close to app dependencies
 * size
 * do me a favor
 * Signed, you can verify inregiry w/ DCT docker content trust

> Cuz we are really cool

### Requirements

 * [Git](https://git-scm.org)
 * [Docker](http://docker.io)
 

### Supported Versions

 * [`1.0`, (Dockerfile)](link)


Usage
-----

### Features

 * Drops you into the REPL
 * Two
 * THree
 
 
### Pulling the Image
Private currently - Become a customer and use them, or fork them and use them!


### Configs

Default directory is /node/app


### Example Dockerfile for Your Project
Make sure to add .node_modules to your .dockerignore file so it is not sent to daemon.

Use multi-stage builds to bring the size down a bit. Install modules w/ full build, then 
create and install application w/ slim build.

```
# Build/Install Stage
FROM gcr.io/darksociety-containers/node:14-alpine

COPY package*.json yarn-lock.json .

# Install any dependencies
RUN apk add --no-cache python3

# Now install
RUN yarn ci --prod

CMD ["node", "index.js"]
```

### Environment

| Package | Description |
| ------- | ----------- |
| bash | For getting things consistent across flavors. |
| dumb-init | Setting up a Node init for simplification. |
| make | Manages the build and install stages of the containers. |
| git | For obvious reasons. |
| sudo | For obvious reasons.|


### Scripts

| Script | Description |
| ------- | ----------- |
| docker-entrypoint.sh | Configuration and initiation for the container. |
| docker-healthcheck.js |Confirm the container is running and in a healthy state.|


Resources
---------

 * [Developer Standards](https://github.com/GalvanizeOpenSource/developer-standards)
 

Developers
---------

**Rye Miller**
 * [Github](https://github.com/iods)
 * [Homepage](http://ryemiller.io)
 * [@ryemiller](http://twitter.com/ryemiller)

**Tiffany Creamer**
 * [Github](https://github.com/tnondairy)


Changelog
---------

### [2020-11-27]
 * Added versions 10, 12, 14, and 15 to the DSCR
 

Known Issues
------------

Any known issues can be viewed or added on [GitHub](https://github.com/thedarksociety/docker-node/issues).


Versioning
----------

For transparency into the release cycle and in striving to maintain backwards compatibility, this project is
maintained under [the Semantic Versioning Guidelines](http://semver.og).


Copyright
---------

Copyright (c) 2020 The Dark Society