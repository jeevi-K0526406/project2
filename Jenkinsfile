pipeline {
    agent any

    stages {

        stage('Clone') {
            steps {
                echo 'Repository Cloned'
            }
        }

        stage('Build') {
            steps {
                sh 'echo Building Application'
            }
        }

        stage('Test') {
            steps {
                sh 'npm test'
            }
        }

        stage('Docker Build') {
            steps {
                sh 'docker build -t demo .'
            }
        }
    }
}
