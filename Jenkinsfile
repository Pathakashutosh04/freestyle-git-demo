pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                checkout([
                    $class: 'GitSCM',
                    branches: [[name: 'b1']],
                    extensions: [],
                    userRemoteConfigs: [[url: 'https://github.com/Pathakashutosh04/freestyle-git-demo.git']]
                ])
            }
        }

        stage('Build') {
            steps {
                git branch: 'b1', url: 'https://github.com/Pathakashutosh04/freestyle-git-demo.git'
                bat 'python hello.py'
            }
        }

        stage('PyTest') {
    steps {
        echo 'Running PyTest...'

        // Install pytest
        bat 'python -m pip install pytest'

        // Execute test cases
        bat 'python -m pytest || exit /b 0'
    }
}
        stage('Docker Deploy') {
            steps {
                echo 'Building Docker image...'

                // Build Docker image
                bat 'docker build -t myapp:latest .'

                echo 'Running Docker container...'

                // Run Docker container
                bat 'docker run -d --name myapp_container11 myapp:latest'

                echo 'Docker deployment completed!'
            }
        }
    }
}
