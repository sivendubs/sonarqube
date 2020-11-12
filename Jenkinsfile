pipeline {
    agent any
    tools {
        maven 'Maven'    
    }
   stages {
    stage('Build Sonarqube') {
      steps {
        script {
          sh "dockerImage= docker.build("sivendu/sonarqube-mule")"
            docker build --tag=alawaniy/sonarqube-mule
        }

        echo 'image built'
      }
    }

    stage('Run Sonarqube') {
      steps {
        script {
          sh 'docker run -itd -p 9000:9000 --name sonarqube-mule  sivendu/sonarqube-mule'
        }

        echo 'container running'
      }
    }
    }
    }
