pipeline {
    agent any

    stages {

        stage('Checkout Code') {
            steps {
                git url: 'https://github.com/your-repo/cicd-demo.git', branch: 'main'
            }
        }

        stage('Build with Maven') {
            steps {
                sh 'mvn clean package'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t cicd .'
            }
        }

        stage('Run Container') {
            steps {
                sh 'docker run -d -p 8080:8080 --name cicd-container cicd'
            }
        }
    }
}