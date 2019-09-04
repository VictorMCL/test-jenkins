pipeline {
  agent { 
    docker { 
      image 'python:3-alpine'
      args '-u root' 
      } 
  }
  stages {
    stage('Obtener_Codigo'){
      steps{
	      git poll: true, url: 'git@github.com:VictorMCL/test-jenkins.git'
      }
    }
    stage('build') {
      steps {
        sh 'pip install -r requirements.txt'
      }
    }
  }
}
