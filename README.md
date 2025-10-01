NodeJS Demo App - CI/CD Pipeline

This repository demonstrates automating code deployment using *GitHub Actions*.

 Project Structure
- index.html → Sample web application
- Dockerfile → Docker image build configuration
- .github/workflows/main.yml → CI/CD workflow

 Workflow Steps
1. *Trigger:* On push or pull request to main branch
2. *Build:* Docker image of the app
3. *Run:* Start container and expose port 8080
4. *Test:* Verify the app responds with "200 OK"
5. *Cleanup:* Stop and remove container

 Tools Used
- GitHub & GitHub Actions
- Docker
 nodejs-demo-app

Simple CI/CD Pipeline with Jenkins

This project demonstrates a basic CI/CD pipeline using Jenkins, Docker, and GitHub.

Steps
1. Clone this repo and set up Jenkins.
2. Add DockerHub credentials in Jenkins with ID `dockerhub-creds`.
3. Create a Pipeline or Multibranch Pipeline job pointing to this repo.
4. Configure a GitHub webhook: `http://<jenkins-host>:8080/github-webhook/`.
5. On every push:
   - Jenkins will build a Docker image.
   - Push it to DockerHub.
   - Deploy the app locally on Jenkins host (port 8080).

Test
Open [http://localhost:8080](http://localhost:8080) after pipeline run.

Task 3 – Provision Docker Container using Terraform
This project uses Terraform with the Docker provider to pull the `nginx:alpine` image and run a container named `nginx_terraform` mapped to port 8080. The setup demonstrates Infrastructure as Code by automating container provisioning, verification, and cleanup with `terraform init`, `plan`, `apply`, and `destroy`.

TASK 5 - Minikube Kubernetes Deployment
Objective: Build a local Kubernetes cluster with Minikube and deploy a sample nginx app.

How to reproduce:
1. Install Docker, kubectl, minikube.
2. Start minikube: `minikube start --driver=docker`
3. Apply manifests:
   - `kubectl apply -f deployment.yaml`
   - `kubectl apply -f service.yaml`
4. Access service: `minikube service my-nginx-svc --url`
5. Scale: `kubectl scale deployment/my-nginx --replicas=4`
6. Rolling update example: `kubectl set image deployment/my-nginx nginx=nginx:1.21.6`

Task 6: Host a Static Website using GitHub Pages.
The repo contains a simple index.html file (and optional CSS) to demonstrate how GitHub Pages can be used to host a static website directly from a repository.
