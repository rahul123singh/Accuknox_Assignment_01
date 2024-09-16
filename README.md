
# AccuKnox QA Engineer Practical Assessment

## Overview

This repository of qa-test contains a frontend and backend service that are deployed to a local Kubernetes cluster. This document provides instructions for deploying the services, verifying communication between them, running automated tests, and handling image uploads.


## Prerequisites

Ensure you have the following tools installed:

- [Docker](https://docs.docker.com/get-docker/)
- [Kubernetes](https://kubernetes.io/docs/tasks/tools/)
- [Minikube](https://minikube.sigs.k8s.io/docs/) or [Kind](https://kind.sigs.k8s.io/)
- [curl](https://curl.se/) (for testing)
- [bash](https://www.gnu.org/software/bash/) (for running the test script)

## Setup and Deployment

1. Clone the Repository

git clone https://github.com/Vengatesh-m/qa-test.git

2. move to the qa-test directory 
    cd qa-test

3. Ensure minikube is intalled and then start the minikube
    minikube start

4. Navigate to the deployment directory and Prepare and Deploy Your Services
    cd path/to/your/repository/backend

5. Build the Docker Image for Backend:
    docker build -t backend-image:latest .

6. Build the Docker Image for Backend:
    cd path/to/your/repository/frontend

7. Build the Docker Image for Frontend:
    docker build -t frontend-image:latest .

8.  Deploy the Services to Kubernetes
    kubectl apply -f backend-deployment.yaml
    kubectl apply -f frontend-deployment.yaml

9.  Verify Deployments:
    kubectl get pods
    kubectl get services

## Automated Testing
    Create a test script provided in the github repository

## Forward Ports 
# Forward port for backend service
    kubectl port-forward service/backend-service 3000:3000

# In a new terminal window, forward port for frontend service
    kubectl port-forward service/frontend-service 8080:80

## Verify Services
    kubectl get services

## Verify Backend Service
    curl http://localhost:3000/greet
    You should see a response like:
    {"message":"Hello from the Backend!"}

## Verify Frontend Service
    Test if the frontend service is working by sending a request:
    curl http://localhost:8080

## Automated Testing
    A test script is provided inside the qa-test folder to automate the verification process. Make sure the script is executable by command:
    chmod +x test_integration.sh
    Run the Test Script
    ./test_integration.sh --> command to run the test script



#

