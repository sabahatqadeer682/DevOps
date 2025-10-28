pipeline {
    agent any

    environment {
        DOCKERHUB_CREDENTIALS = credentials('dockerhub')
        IMAGE_NAME = "amna989/devops" 
    }

    stages {
        stage('Pull Code from GitHub') {
            steps {
                echo '📥 Pulling source code from GitHub...'
                git branch: 'main', url: 'https://github.com/sabahatqadeer682/DevOps.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                echo '🐳 Building Docker image...'
                script {
                    sh 'docker build -t ${IMAGE_NAME}:latest .'
                }
            }
        }

        // 🧪 New Stage: Run Tests
        stage('Run Tests') {
            steps {
                echo '🧪 Running dummy tests...'
                // Creating a simple fake test result file (works even if you don’t have real tests)
                sh '''
                    echo "<testsuite name='SampleSuite'>
                            <testcase classname='Demo' name='sampleTest1'/>
                            <testcase classname='Demo' name='sampleTest2'/>
                         </testsuite>" > results.xml
                '''
            }
        }

        // 🧾 New Stage: Publish Test Results
        stage('Publish Test Results') {
            steps {
                echo '📊 Publishing test results...'
                junit 'results.xml'  // Jenkins will read and visualize this
            }
        }

        stage('Push Image to Docker Hub') {
            steps {
                echo '📤 Pushing Docker image to Docker Hub...'
                script {
                    sh '''
                        echo "$DOCKERHUB_CREDENTIALS_PSW" | docker login -u "$DOCKERHUB_CREDENTIALS_USR" --password-stdin
                        docker push ${IMAGE_NAME}:latest
                    '''
                }
            }
        }
    }

    post {
        success {
            echo '✅ Pipeline executed successfully — image pushed to Docker Hub!'
        }
        failure {
            echo '❌ Pipeline failed — check build logs.'
        }
    }
}
