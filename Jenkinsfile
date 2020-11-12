pipeline {
    agent any
    tools {
        maven 'Maven'    
    }
   stages {
    stage('Build Sonarqube') {
      steps {
        script {
          //sh "dockerImage= docker.build("sivendu/sonarqube-mule")"
            sh "docker build --tag sivendu/sonarqube-mule ."
        }
      }
    }

    stage('Run Sonarqube') {
      steps {
        script {
          sh 'docker run -d -p 9000:9000 --name sonarqube-mule  sivendu/sonarqube-mule'
        }
      }
    }
    }
    }
