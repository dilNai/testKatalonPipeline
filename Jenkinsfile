pipeline {
    agent any
    stages {
        stage('Test') {
            steps {
                sudo bash ./run_Test.sh 
            }
        }
    }
//    post {
//        always {
//            archiveArtifacts artifacts: 'report/**/*.*', fingerprint: true
//            junit 'report/**/JUnit_Report.xml'
//        }
//    }
}
