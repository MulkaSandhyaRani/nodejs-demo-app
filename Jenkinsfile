pipeline {
  agent any

  environment {
    IMAGE = "yourdockerhubusername/simple-pipeline-app"
  }

  stages {
    stage('Checkout') {
      steps {
        checkout scm
      }
    }

    stage('Build Docker Image') {
      steps {
        script {
          dockerImage = docker.build("${env.IMAGE}:${env.BUILD_NUMBER}")
        }
      }
    }

    stage('Push to DockerHub') {
      steps {
        script {
          docker.withRegistry('', 'dockerhub-creds') {
            dockerImage.push()
            dockerImage.push("latest")
          }
        }
      }
    }

    stage('Deploy') {
      steps {
        echo "Deploying app container on Jenkins server"
        sh '''
          docker rm -f pipeline-app || true
          docker run -d --name pipeline-app -p 8080:80 ${IMAGE}:${BUILD_NUMBER}
        '''
      }
    }
  }

  post {
    always {
      echo "Pipeline finished with status: ${currentBuild.currentResult}"
    }
  }
}
