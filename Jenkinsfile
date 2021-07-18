pipeline {
  agent any
  tools {
    maven 'M2_HOME'
  }
  environment {
    registry = "cheptmelly/devops-pipeline"
    registryCredential = 'd47bc4a0-933e-4d08-afe0-1bb967428259'
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
      echo "testing"
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
