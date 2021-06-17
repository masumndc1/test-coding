pipeline {
    agent { label 'test-ubuntu18' }
    stages {
        stage('build') {
            steps {
                echo "printing hellow world"
                sh 'python test.py'
            }
        }


        stage('deploy') {
            steps {
                echo "printing python version"
                sh 'python --version'
            }
        }

        stage('production') {
            steps {
                echo "greetings to jenkins"
                sh 'echo "hi jenkins"'
            }
        }
    }
}
