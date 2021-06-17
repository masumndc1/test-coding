pipeline {
    agent { label 'test-ubuntu18' }
    stages {
        stage('build') {
            steps {
                sh 'python test.py'
            }

        stage('deploy') {
            steps {
                sh 'python --version'
            }

        stage('production') {
            steps {
                sh 'echo "hello world"'
            }
        }
    }
}
