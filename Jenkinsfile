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
		        sh ' docker rm -f docsapp -container || true '
                sh ' docker run -d --name docsapp -p 8082:80 docsapp '
            }
        }
    }
}
