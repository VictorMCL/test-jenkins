pipeline {
  agent { docker { image 'python:3.7-alpine' } }
  stages {
    stage('Obtener_Codigo'){
      steps{
	git poll: true, url: 'git@github.com:VictorMCL/test-jenkins.git'
      }
    }
    stage('build') {
      steps {
        sh 'pip install -r -H requirements.txt'
      }
    }
  }
}
