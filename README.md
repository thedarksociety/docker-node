<!-- TITLE -->
<p align="center"><img src="https://avatars.githubusercontent.com/u/75049740?s=200&v=4" height="130"  alt=""/></p>
<h1 align="center">NodeJS Docker Images for the DSCR</h1>
<p align="center">NodeJS environments available through the Dark Society Container Registry</p>
<!-- END: TITLE -->

<!-- BADGES -->
<p align="center">
  <!-- license -->
  <a href="./LICENSE" alt="license: MIT">
    <img src="https://img.shields.io/badge/license-MIT-026AA7.svg?style=flat-square"  alt=""/>
  </a>
  <!-- maintained-->
  <a href="https://github.com/thedarksociety/docker-node/graphs/commit-activity" alt="Maintenance">
    <img src="https://img.shields.io/badge/maintained%3F-yes-026AA7.svg?style=flat-square"  alt=""/>
  </a>
  <!-- version -->
  <img alt="GitHub release (latest by date)" src="https://img.shields.io/github/v/tag/thedarksociety/docker-node?style=flat-square&color=026AA7">
  <!-- pull requests -->
  <img alt="GitHub release (latest by date)" src="https://img.shields.io/github/issues-pr/thedarksociety/docker-node?style=flat-square&color=1EAE72">
  <!-- github issues -->
  <a href ="https://img.shields.io/github/workflow/status/iods/docker-node/build">
    <img src="https://img.shields.io/github/issues-raw/thedarksociety/docker-node.svg?maxAge=25000&style=flat-square"  alt=""/>
  </a>
  <!-- developer github -->
  <a href ="https://img.shields.io/github/workflow/status/iods/docker-node/build">
    <img src="https://img.shields.io/badge/GitHub-iods-181717.svg?style=flat-square&logo=github"  alt=""/>
  </a>
  <!-- github stars --> 
  <a href="https://github.com/thedarksociety/docker-node/stargazers">
    <img alt="GitHub stars" src="https://img.shields.io/github/stars/thedarksociety/docker-node?style=social">
  </a>
</p>
<!-- END: BADGES -->

<!-- SUMMARY -->
<p align="center">
  <a href="#why-use-dark-society-images">Why use the DSCR?</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#getting-started">Getting Started</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#usage">What's inside?</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#development">Developers</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#authors">Authors</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#license">License</a>
</p>
<!-- END: SUMMARY -->


### Description

The images are a starting point for NodeJS applications available through the Dark Society Cloud. They provide a bedrock for running scalable
and reliable containers for any size application. Additionally, they have been architected with [Node's list of best practices]() insuring
security and dependability are a constant priority.

> Why was the ***Docker*** container frustrated?... cuz it didn't ***Node*** what it needed... xD


## TL;DR

```sh
$ docker run --rm gcr.io/darksociety-containers/node:14-alpine node
```

### Docker Compose
```sh
$ curl -link > docker-compose.yml
$ docker-compose up -d
```


Table of Contents
-----------------

- [Getting Started](#getting-started)
  - [Why use Dark Society images](#why-use-dark-society-images)
  - [Features](#features)
  - [Supported Versions](#supported-versions)
- [Usage](#usage)
  - [Built With](#built-with)
  - [How to use this image](#pulling-the-image)
- [Development](#wrench-development)
  - [Example Dockerfile for Your Project]()
  - [Environment](#environment)
  - [Scripts](#scripts)
- [Running Tests](#running-tests)
- [Deployment](#deployment)
- [Resources](#resources)
- [FAQ](#frequently-asked-questions)
- [Authors](#authors)
- [Notable Changes](#notable-changes)
- [Contributing](#contributing)
- [Known Issues](#issues)
- [License](#license)


Getting Started
---------------

These instructions will get you a copy of the project up and running on your local machine for development and 
testing purposes. See deployment for notes on how to deploy the project on a live system.


### Why use Dark Society Images?
* Code in containers provides reproducibility and dependability local environments cannot provide.
* Close to app dependencies
* size
* do me a favor

### Features

* Drops you into the REPL [WIP]
* Dumb inits, uses container as an executable
* Includes some basic needs that the other node does not come w/
* Is hosted through the DSCR

> Cuz I am trying to be cool

### Supported Versions

* [`1.0`, (Dockerfile)](link)


Usage
-----
### Built With

* [Git](https://git-scm.org) - Version Control
* [Docker](http://docker.io) - Infrastructure/Deployments
* [NodeJS](http://www.nodejs.org/) - Server-Side Applications
* [GCR]() - Google Cloud (Container Registry)


### What can I use them for?

Apps.

### Pulling the Image

The recommended way to get the Node image is to pull it from the DSCR (currently private). If
you do not have access, you can fork and use or become a customer!

```bash
$ docker pull gcr.io/darksociety-containers/node:14-alpine
```

> For a specific version, use any of the above referenced tags.
```bash
$ docker pull gcr.io/darksociety-containers/node:[TAG]
```

> Optionally, you can build the image yourself.
```bash
$ docker build -t darksociety-containers/node 'linktorepo'
```


Development
-----------

Getting the repository

Using Git
```bash
$ git clone https://github.com/<your-login>/<repository>.git
```
Using Github CLI
```bash
$ gh repo clone thedarksociety/docker-node
```

### Example Dockerfile for Your Project
Make sure to add .node_modules to your .dockerignore file so it is not sent to daemon.

Use multi-stage builds to bring the size down a bit. Install modules w/ full build, then
create and install application w/ slim build.

```Dockerfile
# Build/Install Stage
FROM gcr.io/darksociety-containers/node:14-alpine

COPY package*.json yarn-lock.json .

# Install any dependencies
RUN apk add --no-cache python3

# Now install
RUN yarn ci --prod
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


Running Tests
-------------

You can run tests with Docker Compose for each version.


### With Docker Compose

Run all tests with the following command in the project directory:
```bash
$ docker-compose -f tests/docker-compose.14-alpine.yml up -d
```

### From the CLI

```bash
$ docker run 
```


Deployment
----------

***Work In Progress***


Resources
---------

* [Dark jsDK](https://github.com/iods/js-dark) - A JavaScript Project using the Docker Node Image
* [Congruence](https://github.com/thedarksociety/congruence-standards)
* [Developer Standards](https://github.com/GalvanizeOpenSource/developer-standards)
  

Frequently Asked Questions
--------------------------

Use the [Discussions]() area on Github for this.


Authors
-------

* **Rye Miller** - *Initial work* - [@iods](https://github.com/iods)
* **Tiffany Creamer** - *Initial work* - [@tnondairy](https://github.com/iods)

See also the list of [contributors](https://github.com/thedarksociety/docker-node/contributors) who participated in this project.


Notable Changes
---------------


### [2021-04-14]
 * Added some templates for repo documentation
 * Updated packages in builds for Alpine 14, 15
 * Release of v1.0


### [2020-11-27]
 * Added versions 10, 12, 14, and 15 to the DSCR


Contributing
------------

Please read [CONTRIBUTING.md](CONTRIBUTING.md) for details on our code of conduct, and the process for submitting pull requests to us.


Known Issues
------------

Any known issues can be viewed or added on [GitHub](https://github.com/thedarksociety/docker-node/issues).


License
-------

This project is licensed :memo: under the MIT License - see the [LICENSE](LICENSE) file for details

---

<h4 align="center">
  Built with 💙 By <a href="https://github.com/iods">@iods</a>
</h4>