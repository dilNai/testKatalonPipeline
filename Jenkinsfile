pipeline {
    agent any
    stages {
        stage('Test') {
            steps {
                sudo bash ./run_Test.sh
            }
        }     
    }   
    post {
        always {
            junit testResults: 'reports/**/JUnit_Report.xml'
            archiveArtifacts artifacts: 'reports/**/*.*', fingerprint: true           
        }
    }
}