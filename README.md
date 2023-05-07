# hiring-challenge

This repository contains solution to task 2 of Things Solver DevOps hiring challenge.
The task can be found [here](https://github.com/ThingsSolver/hiring-challenge/tree/main/devops/task-2).

## Files
- [Dockerfile](https://github.com/kristivojevic/hiring-challenge/blob/master/Dockerfile "Dockerfile") contains steps to build Flask web app image 
- [app.py](https://github.com/kristivojevic/hiring-challenge/blob/master/app.py "app.py") contains the Flask web app itself
- [deployment.yaml](https://github.com/kristivojevic/hiring-challenge/blob/master/deployment.yaml "deployment.yaml") is a deployment of the web app on Kubernetes cluster
- [docker-compose.yaml](https://github.com/kristivojevic/hiring-challenge/blob/master/docker-compose.yaml "docker-compose.yaml") is a file which automates build proccess of the container
- [service.yaml](https://github.com/kristivojevic/hiring-challenge/blob/master/service.yaml "service.yaml") is a load balancer service described in the third component of the task

## Setup
To test this task you need a working Kubernetes cluster (version 1.27.1 or higher) and Docker (version 23.0.5 or higher).

Deployment of necessary resources to the Kubernetes cluster is done with following commands:
 ```console
$ kubectl apply -f deployment.yaml
$ kubectl apply -f service.yaml
```
Web app should be up and running on ``localhost:80`` or ``localhost:443``.
