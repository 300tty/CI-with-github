pipeline {
    agent any

    environment {
        // 设置环境变量，比如代码仓库
        GIT_URL = 'https://github.com/300tty/CI-with-github.git'
    }

    stages {
        stage('Checkout') {
            steps {
                
                git(url: "${GIT_URL}", branch: 'main')
            }
        }
        stage('Build') {
            steps {
                
                sh 'echo "Replace this line with your build command"'
              
               
            }
        }
        stage('Test') {
            steps {
                
                sh 'echo "Replace this line with your test command"'
             
                // sh 'pytest'
            }
        }
    }
    post {
      
        always {
            echo 'This will always run'
        }
        success {
            echo 'Build was a success!'
        }
        failure {
            echo 'Build failed!'
        }
    }
}
