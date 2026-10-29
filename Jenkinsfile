pipeline {
    agent any

    environment {
        DOCKER_IMAGE_NAME = 'daurenkyzy-aiym-student-api'
        DOCKER_TAG        = 'v1.0-daurenkyzy-aiym'
        STUDENT_NAME      = 'Daurenkyzy Aiym'
        STUDENT_ID        = '38083'
    }

    stages {
        stage('Checkout') {
            steps {
                echo "Pipeline started for ${env.STUDENT_NAME} (ID: ${env.STUDENT_ID})"
                checkout scm
            }
        }

        stage('Build') {
            steps {
                echo "Building application..."
                sh 'chmod +x gradlew || true'
                sh './gradlew clean compileJava --no-daemon || gradle clean compileJava'
            }
        }

        stage('Test') {
            steps {
                echo "Running tests..."
                sh './gradlew test --no-daemon || gradle test'
            }
        }

        stage('Docker Build') {
            steps {
                echo "Building Docker image ${env.DOCKER_IMAGE_NAME}:${env.DOCKER_TAG}..."
                sh "docker build -t ${env.DOCKER_IMAGE_NAME}:${env.DOCKER_TAG} ."
            }
        }

        stage('Verify') {
            steps {
                echo "Verifying Docker artifact..."
                sh "docker images | grep ${env.DOCKER_IMAGE_NAME}"
                echo "Completed for ${env.STUDENT_NAME}"
            }
        }
    }

    post {
        failure {
            echo "Pipeline failed."
        }
        success {
            echo "Pipeline succeeded."
        }
    }
}
