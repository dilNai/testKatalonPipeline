pipeline {
    agent none
    stages {
        stage('Test') {
            agent {
                 docker{
                   image 'dil_test_image'
                  }
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