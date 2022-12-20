pipeline {
    agent any
    stages {
        stage('Checkout From SCM') {
            steps {
               git 'https://github.com/Dishaangsali/Demo_2.git'
            }
        }
        stage('Build') {
            steps {
               bat 'docker build -t image3 .'
            }
        }
        stage('Run') {
            steps {
                bat 'docker run -t image3'
            }
        }
        stage('Authentication') {
            steps {
                bat 'docker tag image3 dishaangsali/image3:%BUILD_ID%'
            }
        }
        stage('Push') {
            steps {
                bat 'docker push dishaangsali/image3:%BUILD_ID%'
            }
        }
    }
}
