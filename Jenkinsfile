pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/sabahatqadeer682/DevOps.git'
            }
        }

        stage('Build') {
            steps {
                echo 'Building the application...'
                bat 'echo Simulating build process'
            }
        }

        stage('Test') {
            steps {
                echo 'Running tests...'
                bat 'echo All tests passed successfully!'
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deploying the app...'
                bat 'echo Deployment complete!'
            }
        }
    }

    post {
        success {
            echo 'Pipeline executed successfully!'
        }
        failure {
            echo 'Pipeline failed!'
        }
    }
}
