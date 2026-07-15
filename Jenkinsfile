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
                sh ' docker build -t myapp . '
            }
        }
        stage("Run Container"){
            steps{
		        sh ' docker rm -f myapp-container || true '
                sh ' docker run -d --name myapp -container -p 8082:80 myapp '
            }
        }
    }
}
