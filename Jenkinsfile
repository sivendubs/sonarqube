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
            sh "/Applications/Docker.app/Contents/Resources/bin/docker build --tag sivendu/sonarqube-mule ."
        }
      }
    }

    stage('Run Sonarqube') {
      steps {
        script {
          sh "/Applications/Docker.app/Contents/Resources/bin/docker stop sonarqube-mule" 
          sh "/Applications/Docker.app/Contents/Resources/bin/docker rm sonarqube-mule"   
          sh '/Applications/Docker.app/Contents/Resources/bin/docker run -d -p 9000:9000 --name sonarqube-mule  sivendu/sonarqube-mule'
        }
      }
    }
    }
    }
