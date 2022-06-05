pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        sh '''curl -fsSLO https://get.docker.com/builds/Linux/x86_64/docker-17.03.1-ce.tgz &&
tar --strip-components=1 -xvzf docker-17.03.1-ce.tgz -C /usr/local/bin'''
        sh 'docker build . -t docs'
      }
    }

  }
}