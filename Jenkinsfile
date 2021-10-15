pipeline {
    agent none
    stages {
        stage('Test') {
            agent {
                 label 'dind'
            } 
            steps {
                sh """
                ./run_Test.sh
                """
            }
		    post  {
				 always {
				   junit 'reports/**/JUnit_Report.xml'
			   }
            }
          }
    
     }
}