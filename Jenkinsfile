pipeline {
    agent any
    stages{
        stage('Setup'){
            steps{
                sh "bash jenkins/scripts/setup.sh"
            }
        }
        stage('Test'){
            steps{
                sh "bash jenkins/scripts/test.sh"  
            }
        }
    }
}
