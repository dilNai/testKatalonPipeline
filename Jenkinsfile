pipeline {
    agent any
    stages {
        stage('Test') {
            steps {
                sudo bash './run_Test.sh'
            }
		    post  {
				 always {
				   junit 'reports/**/JUnit_Report.xml'
			   }
            }
          }
    
     }
}