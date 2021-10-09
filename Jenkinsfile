pipeline {
    agent any
    stages {
        stage('Test') {
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