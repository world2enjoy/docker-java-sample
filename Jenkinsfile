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
  
  
    stage('Build Docker image'){
                       
            steps {
                script {
                    app = docker.build("world2enjoy/node-app")
                    app.inside {
                        sh 'echo $(curl localhost:8081)'
                    }
                }
            }
            
        }
        
        stage('Push docker image'){
           
            steps{
                script {
                    docker.withRegistry('https://registry.hub.docker.com','docker_hub_login'){
                        app.push("${env.BUILD_NUMBER}")
                        app.push("latest")
                    }
                }
            }
        }
        
    }
}
