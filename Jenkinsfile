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
                sh ' npm install '
                sh ' npm run '
            }
        }
 
        stage("Build Docker Image"){
            steps{
                sh ' docker build -t mywebappss . '
            }
        }
        stage("Run Container"){
            steps{
		        sh ' docker rm -f mywebappss -container || true '
                sh ' docker run -d --name mywebappss -p 8082:3000 mywebappss'
            }
        }
    }
}
