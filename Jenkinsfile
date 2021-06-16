pipeline {
    agent { label 'test-ubuntu20' }
    stages {
        stage('build') {
            steps {
                sh 'python --version'
                sh 'python test.py'
            }
        }
    }
}
