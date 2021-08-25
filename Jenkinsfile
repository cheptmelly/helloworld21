pipeline {
    agent any
    tools {
        maven 'M2_HOME'
    }
    environment {
        registry = "cheptmelly/decriptive-pipeline"
        registryCredential = 'DockerID'
    }
    stages{
        stage ('build'){
            steps{
                sh "mvn clean"
                sh "mvn install"
                sh "mvn package"
            }
        } 
        stage ('test'){
            steps{
                echo "test"
                sh "mvn test"
            }
        }
        stage ('deploy'){
            steps{
            script {
                docker.build registry + ":$BUILD_NUMBER"
            }
           }
        }
    }
