pipeline {
    agent any
   tools {
            maven 'maven3.6.0'
            
        
      }
    
    stages {
        stage('Build') {
              steps {
                  sh 'mvn clean package'
            }
        }
  }
}
