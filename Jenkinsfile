pipeline {
    agent { label 'master' }
    stages {
        stage('build') {
            steps {
                sh 'python test.py'
            }
        }
    }
}
