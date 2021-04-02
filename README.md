[![amrussell](https://circleci.com/gh/amrussell/DevOps_Microservices.svg?style=svg)](https://circleci.com/gh/amrussell/DevOps_Microservices) 

## Project Overview
This is a Python Flask application that can make predictions, meant to be made into a Docker image and deployed using Kubernetes.

---

## Setup the Environment

* Create a virtualenv and activate it:
* `python3 -m venv ~/.devops`
* `source ~/.devops/bin/activate`
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Kubernetes Steps

* Setup and Configure Docker locally: 
  - Install Docker Desktop for Windows, or `apt-get install docker`
  - Install VirtualBox for Windows, or `apt-get install virtualbox`
* Setup and Configure Kubernetes locally
  - `apt-get install minikube`
* Create Flask app in Container
  - `./run_kubernetes.sh`

### Files
* `Dockerfile`: Specification for the app's runtime environment
* `Makefile`: Specification for performing different environment setup and linting tasks
* `app.py`: Python application source code
* `make_prediction.sh`: Sends a POST request to the application when it's running locally on port 8000
* `requirements.txt`: Requirements specification for necessary Python packages
* `run_docker.sh`: Shell script you run to create and run a Docker image locally from the app
* `run_kubernetes.sh`: Create a Kubernetes deployment 
