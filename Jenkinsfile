pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        container(name: 'docker') {
          sh 'docker build . -t registry.k8s.fruitysites.com:443/test-docs:develop'
          sh 'docker push registry.k8s.fruitysites.com:443/test-docs:develop'
        }

      }
    }

  }
}