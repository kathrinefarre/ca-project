node {
   //def mvnHome
	echo 'hello world'
   stage('Preparation') { // for display purposes
      // Get some code from a GitHub repository
      git credentialsId: '1434f28b-6fa5-4ede-8e88-6f3706a3572e', url:'https://github.com/finkultur/romannumerals'

      // Get the Maven tool.
      // ** NOTE: This 'M3' Maven tool must be configured
      // **       in the global configuration.    
    
   }   
   stage('Build') {
      // Run the maven build
      //if (isUnix()) {
      //   sh "mvn -Dmaven.test.failure.ignore clean package"
      //} 
   }   
   stage('Results') {
      //junit '**/target/surefire-reports/TEST-*.xml'
      //archive 'target/*.jar'
   }   
}

