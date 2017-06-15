node {
   //def mvnHome
	echo 'hello world'
   stage('Preparation') { // for display purposes
      // Get some code from a GitHub repository
      git credentialsId: '1434f28b-6fa5-4ede-8e88-6f3706a3572e', url:'https://github.com/finkultur/ca-project'
    
   }   
   stage('Build') {
	echo 'Nothing to build'
   }   
   stage('Test') {
      if (isUnix()) {
	sh "python tests.py"
        sh "python test_curl_docker.py"
      }
      //archive 'target/*.jar'
   }   
}

