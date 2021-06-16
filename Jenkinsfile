pipeline {
    agent { test-ubuntu16 }
    stages {
        stage('build') {
            steps {
                sh 'python test.py'
            }
        }
    }
}
