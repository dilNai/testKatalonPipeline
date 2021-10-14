pipeline {
    agent {
        docker{
              image 'dil_test_image'
            }
        } 
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