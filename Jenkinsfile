pipeline {
    agent any
    
    stages {
        stage('Build') {
              steps {
                echo 'Running build automation'
                sh './gradlew build --no-daemon'
                archiveArtifacts artifacts: 'helloworld-1.0-SNAPSHOT.jar'
            }
        }
  }
}
