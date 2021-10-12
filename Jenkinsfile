pipeline {
    agent  {
            label 'docker'
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