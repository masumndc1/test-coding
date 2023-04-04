pipeline {
    agent { label 'salt' }

    stages {
        stage('Build') {
            steps {
                sh 'python3 --version'
            }
            post {
              success {
                 echo 'Seems like python is installed'
              }
            }
        }

        stage('Test') {
            steps {
               sh 'sudo salt "*dv*" test.ping' 
            }
            post {
              success {
                echo 'Both test nodes are up!'
              }
            }
        }
        
        stage('Deploy') {
            steps {
               sh 'sudo salt "*dv*" pkg.install htop'
            }
            post {
              success {
                echo 'Deployment on Test is done!'
              }
            }
        }
    }

    post {
      success {
         sh 'sudo salt "*pr*" pkg.install htop'
      }
    }
}
