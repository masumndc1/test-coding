pipeline {
    agent { label 'test-ubuntu20' }
    stages {
        stage('build') {
            steps {
                sh 'python test.py'
            }
        }
    }
}
