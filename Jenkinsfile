pipeline {
    stages {
        stage('build') {
          agent ( label 'test-ubuntu16')
            steps {
                echo "printing hellow world"
                sh 'python test.py'
                echo "printing IP add"
                sh 'ifconfig'
            }
        }


        stage('deploy') {
          agent ( label 'test-ubuntu18')
            steps {
                echo "printing python version"
                sh 'python --version'
            }
        }

        stage('production') {
          agent ( label 'test-ubuntu20')
            steps {
                echo "greetings to jenkins"
                sh 'echo "hi jenkins"'
            }
        }
    }
}
