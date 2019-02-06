pipeline {
    agent any
   tools {
            maven 'Maven3.6.0'
            
        
      }
    
    stages {
        stage('Build') {
              steps {
                  sh "mvn -B -DskipTests clean package"
                  archiveArtifacts artifacts: 'target/helloworld-1.0-SNAPSHOT.jar'
            }
        }
  }
}
