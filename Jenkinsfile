pipeline{
    agent any
    stages{
        stage('Checkout'){
            steps{
                git 'https://github.com/Jeetjha-07/Jenkins.git'
            }
        }
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
                 bat 'docker run -d -p 3000:3000 --name jenkin-container jenkinapp:latest'
            }
        }
        stage('test'){
            steps{
                bat 'curl -f http://localhost:3000'
            }
        }
    }
}