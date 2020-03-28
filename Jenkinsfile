pipeline {
    agent any
    stages {
         stage('docker image build') {
            steps {
                sh 'docker build -t bhuvnesh94/flask-helloworld  .'
            }
        }
         stage('docker image run') {
            steps {
                sh 'docker run -d --name flask_helloworld -p 80:80 bhuvnesh94/flask-helloworld'
            }
        }
         stage('docker login') {
            steps {
                sh 'docker login'
            }
        }
         stage('docker image push to dockerhub') {
            steps {
                sh 'docker push bhuvnesh94/flask-helloworld'
            }
        }
         stage('confirmation') {
            steps {
                sh 'echo "check your browser with public-ip:80"'
            }
        }
    }
}
