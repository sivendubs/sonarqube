pipeline {
    agent any
    tools {
        maven 'Maven'    
    }
   stages {
    stage('Build image') {
      steps {
        script {
          dockerImage= docker.build("joji/apiops-anypoint-jenkins-sapi")
        }

        echo 'image built'
      }
    }

    stage('Run container') {
      steps {
        script {
          sh 'docker run -itd -p 8081:8081 --name apiops-anypoint-jenkins-sapi  joji/apiops-anypoint-jenkins-sapi'
        }

        echo 'container running'
      }
    }
    }
    }
