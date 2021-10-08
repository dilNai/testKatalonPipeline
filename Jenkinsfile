pipeline {
    agent any
    stages {
        stage('Test') {
            steps {
                sudo bash ./run_Test.sh 
            }
        }
    }
   /* post {
        always {
            archiveArtifacts artifacts: 'reports/**/*'
            junit testResults: 'reports/**/JUnit_Report.xml'
        }
    } */
}