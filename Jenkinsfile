pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        container(name: 'docker') {
          sh 'docker build . -t "${DOCKER_REPOSITORY}/${DOCKER_TAG}"'
          sh '''docker login -u "${DOCKER_CREDS_USR}" -p "${DOCKER_CREDS_PSW}" "${DOCKER_REPOSITORY}"
docker push "${DOCKER_REPOSITORY}/${DOCKER_TAG}"'''
        }

      }
    }

  }
  environment {
    DOCKER_REPOSITORY = 'registry.k8s.fruitysites.com:443'
    DOCKER_CREDS = credentials('1fdfb4c1-ec64-4eb1-a7ea-72f7ae6dd2aa')
    DOCKER_TAG = 'testdocs:develop'
  }
}