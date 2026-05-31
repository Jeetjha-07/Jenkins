pipeline{
    agent any
    stages{
        stage('Install dependencies'){
            steps{
                bat 'npm install'
            }
        }
        stage('Docker build'){
            steps{
                bat 'docker build -t jenkinapp:latest .'
            }
        }
        stage('Run docker image'){
            steps{
                 bat 'docker run -itd -p 3000:3000 --name jenkin-container jenkinapp:latest'
            }
        }
        stage('test'){
            steps{
                bat 'timeout /t 20'
                bat 'curl -f http://localhost:3000'
            }
        }
    }
}