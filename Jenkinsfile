pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        container(name: 'docker') {
          //sh 'docker build . -t ${DOCKER_REPOSITORY}'
          //sh '''docker login -u ${USERNAME} -p ${PASSWORD} ${DOCKER_REPOSITORY}
//docker push ${DOCKER_REPOSITORY}'''
          docker.build('test-docs').push('latest')
        }

      }
    }

  }
  environment {
    DOCKER_REPOSITORY = 'registry.k8s.fruitysites.com:443/test-docs'
  }
}
