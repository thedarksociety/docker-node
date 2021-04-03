<!-- TITLE -->
<p align="center"><img src="https://avatars.githubusercontent.com/u/75049740?s=200&v=4" height="130"  alt=""/></p>
<h1 align="center">NodeJS Docker Images for the DSCR</h1>
<p align="center">A starting point for NodeJS environments available through the Dark Society Container Registry for use on public and private clouds.</p>
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
  <a href="#why-ds">Why use the DSCR?</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#getting-started">Getting Started</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#-whats-inside">What's inside?</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#rocket-getting-started">Getting Started</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#-whats-inside">What's inside?</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#license">License</a>
</p>
<!-- END: SUMMARY -->


## TL;DR

```sh
$ docker run --rm gcr.io/darksociety-containers/node:14-alpine node
```

### Docker Compose
```sh
$ curl -link > docker-compose.yml
$ docker-compose up -d
```


### Description

Node images. Node Image. Bake me a Node Image.

> No one reads this shit anyway.


Table of Contents
-----------------

- [Getting Started](#beginner-about)
- [Usage](#zap-usage)
  - [Installation](#electric_plug-installation)
  - [How to use this image](#package-commands)
    - [Example Dockerfile for Your Project]()
- [Development](#wrench-development)
  - [Pre-Requisites](#notebook-pre-requisites)
  - [Environment](#nut_and_bolt-development-environment)
  - [Build](#hammer-build)
  - [Deployment](#rocket-deployment)
- [Community](#cherry_blossom-community)
  - [Contribution](#fire-contribution)
- [FAQ](#question-faq)
- [Credit/Acknowledgment](#star2-creditacknowledgment)
- [License](#lock-license)


Getting Started
---------------

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Why use Dark Society Images?
* Code in containers provides reproducibility and dependability local environments cannot provide.
* Close to app dependencies
* size
* do me a favor

> Cuz I am trying to be cool

### Built With

* [tool 1 and its version](link)
* [Git](https://git-scm.org)
* [Docker](http://docker.io)
* [Dropwizard](http://www.dropwizard.io/1.0.2/docs/) - The web framework used
* [Maven](https://maven.apache.org/) - Dependency Management
* [ROME](https://rometools.github.io/rome/) - Used to generate RSS Feeds

### Supported Versions

* [`1.0`, (Dockerfile)](link)


Usage
-----

### Features

* Drops you into the REPL [WIP]
* Dumb inits, uses container as an executable
* Includes some basic needs that the other node does not come w/
* Is hosted through the DSCR


### Pulling the Image
Private currently - Become a customer and use them, or fork them and use them!


### Configs

Default directory is /node


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

STILL WORKING ON THIS -><-
```


## Installation

- All the `code` required to get started
- Images of what it should look like

### Clone

- Clone this repo to your local machine using `https://github.com/fvcproductions/SOMEREPO`

### Setup

- If you want more syntax highlighting, format your code like this:

> update and install this package first

```shell
$ brew update
$ brew install fvcproductions
```

> now install npm and bower packages

```shell
$ npm install
$ bower install
```

- For all the possible languages that support syntax highlithing on GitHub (which is basically all of them), refer <a href="https://github.com/github/linguist/blob/master/lib/linguist/languages.yml" target="_blank">here</a>.



1. Download the repository

- Using Git
```shell
  git clone https://github.com/<your-login>/<repository>.git
```
- Using Github CLI
```shell
  gh repo clone <your-login>/<repository>
```
> :bulb: or whichever way you prefer


## Running tests

Run all tests with the following command in the project directory:
```bash
$ command for running tests
```

## Running the tests

Explain how to run the automated tests for this system

### Break down into end to end tests

Explain what these tests test and why

```
Give an example
```

### And coding style tests

Explain what these tests test and why

```
Give an example
```

*Explain how to run the automated tests for this system*

### npm Scripts

This command will build and execute the program
```
npm start
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


Deployment
----------

Add additional notes about how to deploy this on a live system

Frequently Asked Questions
--------------------------

Use the Discussions area on Github for this.


Resources
---------

* [Dark jsDK](https://github.com/iods/js-dark) - A JavaScript Project using the Docker Node Image
* [Congruence](https://github.com/thedarksociety/congruence-standards)
* [Developer Standards](https://github.com/GalvanizeOpenSource/developer-standards)


Authors
-------

* **Rye Miller** - *Initial work* - [@iods](https://github.com/iods)
* **Tiffany Creamer** - *Initial work* - [@tnondairy](https://github.com/iods)

See also the list of [contributors](https://github.com/thedarksociety/docker-node/contributors) who participated in this project.


## Credit/Acknowledgment

Credit the authors here.



Notable Changes
---------------



### [2020-11-27]
* Added versions 10, 12, 14, and 15 to the DSCR


Issues
------

Any known issues can be viewed or added on [GitHub](https://github.com/thedarksociety/docker-node/issues).


Contributing
------------

* Please read [CONTRIBUTING.md](CONTRIBUTING.md) for details on our code of conduct, and the process for submitting pull requests to us.*


Versioning
----------

For transparency into the release cycle and in striving to maintain backwards compatibility, this project is
maintained under [the Semantic Versioning Guidelines](http://semver.og).



Community
---------

Reach out to me at one of the following places!

[![Web Icon](https://cdn1.iconfinder.com/data/icons/CrystalClear/32x32/apps/package_network.png)](#websiteUrl)
[![GitHub Icon](https://cdn4.iconfinder.com/data/icons/ionicons/512/icon-social-github-32.png)](#githubUrl)
[![Twitter Icon](https://cdn3.iconfinder.com/data/icons/free-social-icons/67/twitter_circle_color-32.png)](#twitterUrl)
[![LinkedIn Icon](https://cdn3.iconfinder.com/data/icons/free-social-icons/67/linkedin_circle_color-32.png)](#linkedInUrl)
[![Email Icon](https://cdn4.iconfinder.com/data/icons/miu-flat-social/60/mail-32.png)](mailto:)


LICENSE
-------

This project is licensed :memo: under the MIT License - see the [LICENSE](LICENSE) file for details

---

<h4 align="center">
  Built with 💙 By <a href="https://github.com/iods">@iods</a>
</h4>