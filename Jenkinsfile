pipeline {
  agent { label 'slave-1'}
    stages{
        stage("git pull"){
            steps{
                echo "pulling repo"
                git branch: 'main', url: 'https://github.com/raghavvbhayana74447/cicd.git'
            }
        }
        stage("build docker image"){
            steps{
                echo "building image"
                sh "docker build -t raghavbhayana/pythonapp:latest ."
            }
        }
        stage("push docker image"){
            steps{
                echo "pushing image"
                withCredentials([usernamePassword('credentialsId':"dockerCred", usernameVariable:'DOCKERHUB_USER', passwordVariable: 'DOCKERHUB_PASS')]){
                sh '''
                 echo "$DOCKERHUB_PASS" | docker login -u "$DOCKERHUB_USER" --password-stdin
                 '''
                sh 'docker push $DOCKERHUB_USER/pythonapp:latest'
                
                }
            }
        }
        stage("docker run"){
            steps{
                echo"starting container"
                sh "docker run -dit -p 8000:8000 raghavbhayana/pythonapp:latest"
            }
        }
    //     stage("docker compose"){
    //         steps{
    //             echo "starting container"
    //             sh "docker compose up -d"
    //         }
    //     }
    // }
}