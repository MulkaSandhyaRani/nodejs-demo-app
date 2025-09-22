# NodeJS Demo App - CI/CD Pipeline

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
