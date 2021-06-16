pipeline {
    agent { label 'test-ubuntu18' }
    stages {
        stage('build') {
            steps {
                sh 'python test.py'
            }
        }
    }
}
