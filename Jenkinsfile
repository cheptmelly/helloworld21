pipeline {
  agent any
  tools {
    maven 'M2_HOME'
  }
  environment {
    registry = "cheptmelly/devops-pipeline"
    registryCredential = 'e2efe7ac-4add-431b-a3dc-fc6b563773e4'
  }
  stages {
    stage ('Build'){
      steps {
        sh 'mvn clean'
        sh 'mvn install'
        sh 'mvn package'
      }
    }
  stage ('test'){
      steps {
      echo "test step"
        sh 'mvn test'
      }
    }
  stage ('deploy'){
      steps {
        script {
          docker.build registry + ":$BUILD_NUMBER"
        }
      }
    } 
  }
}
