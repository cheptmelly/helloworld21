pipeline {
  agent any
  triggers {
    pollSCM '* * * * *'
  }
  tools {
    maven 'M2_HOME'
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
  stage ('tomcat deploy'){
      steps {
        deploy adapters: [tomcat8(credentialsId: 'TomcatID', path: '', url: 'http://192.168.0.39:8080/')], contextPath: null, war: '**/*.war'
        }
      }
    } 
  }
}
