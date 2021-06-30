pipeline {
    agent any
    stages{
        stage('Setup'){
            steps{
                sh "bash jenkins/scripts/setup.sh"
            }
        }
      
        stage('Deploy') {
            steps {
                sh "bash jenkins/scripts/deploy.sh"
            }
        }
    }
}