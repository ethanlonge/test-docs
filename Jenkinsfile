pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        container(name: 'docker') {
          sh 'docker build . -t docs'
        }

      }
    }

  }
}