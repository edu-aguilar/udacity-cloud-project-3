# Refactor Udagram app into Microservices and Deploy
## udacity-cloud-project-3  [![Build Status](https://travis-ci.org/edu-aguilar/udacity-cloud-project-3.svg?branch=master)](https://travis-ci.org/edu-aguilar/udacity-cloud-project-3)

### App context
This is a web application based on a frontend app built with Ionic & Angular and two microservices built with Node using Express framework. Both are REST API's. The Microservice responsabilities are:
  - Users: handles users data and authentication
  - Feed: handles all the users operations over the feeds (CRUD)

### Project Set up
To run the whole project, there is a script at the root of the project (build-containers.sh) which allows you to do that just executing it using 
```sh
$ sh build-containers.sh
```
By the way you should have installed Docker & docker-compose. Once the script is executed, you can open the browser and go to localhost:8100 to check the app up & running.

Also, to run the projects indepently, you should install the dependencies using 
```sh
$ npm run install
```
at the root of each project. To run it, you can use npm run dev for backend services and npm run start to frontend app

### CI Integration
The project is using Travis to continuous integration. There is a .travis.yaml file at the root of the repo with integration steps and configuration.

### Deployment
The project is currently deployed in AWS using Kubernetes as container orchestrator. Currently is using 1 master node and 2 nodes with availability to scale up if it's necessary.