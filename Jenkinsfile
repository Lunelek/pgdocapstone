#!groovy

pipeline {
	agent none  stages {
        stage('Maven Install') {
        agent {
        docker {
            image 'maven:3.6.3'
        }
      }
      steps {
        sh 'mvn clean install'
      }
    }
    stage('Docker Build') {
      agent any
      steps {
        sh 'docker build -t ueberken/pgdocapstone:latest .'
	sh 'docker run -p -d 80:80 ueberken/pgdocapstone:latest'
      }
    }
    stage('Docker Push') {
      agent any
      steps {
        withCredentials([usernamePassword(credentialsId: 'PGDO-docker-jenkins-capstone', passwordVariable: 'dockerHubPassword', usernameVariable: 'dockerHubUser')]) {
        sh "docker login -u ${env.dockerHubUser} -p ${env.dockerHubPassword}"
        sh 'docker push ueberken/pgdocapstone:latest'
        }
      }
    }
    stage('Cleaning up') {
         steps {
           sh 'docker rmi ueberken/pgdocapstone:latest'
         }
    } 
  }
}
