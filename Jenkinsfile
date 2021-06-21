pipeline {
    stages {
        stage('build') {
          node('test-ubuntu16')
            steps {
                echo "printing hellow world"
                sh 'python test.py'
                echo "printing IP add"
                sh 'ifconfig'
            }
        }


        stage('deploy') {
          node('test-ubuntu18')
            steps {
                echo "printing python version"
                sh 'python --version'
            }
        }

        stage('production') {
          node('test-ubuntu20')
            steps {
                echo "greetings to jenkins"
                sh 'echo "hi jenkins"'
            }
        }
    }
}
