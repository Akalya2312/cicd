pipeline {
    agent any

    stages {

        stage('Build with Maven') {
            steps {
                bat 'mvn clean package'
            }
        }

        stage('Build Docker Image') {
            steps {
                bat 'docker build -t cicd .'
            }
        }

        stage('Run Container') {
            steps {
                bat 'docker rm -f cicd-container || exit 0'
                bat 'docker run -d -p 8080:8080 --name cicd-container cicd'
            }
        }
    }
}
