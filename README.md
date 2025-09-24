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
