pipeline {
    agent { lable: "slave-1"}
    stages{
        stage("changing directory"){
            steps{
                echo "Changing directory"
                sh "cd /home/raghav/jenkins"
                echo "directory changed"
            }
        }
        stage("git pull"){
            steps{
                echo "pulling repo"
                sh "git pull "
            }
        }
        stage("build docker image"){
            steps{
                echo "building image"
            }
        }
        stage("push docker image"){
            steps{
                echo "pushing image"
            }
        }
        stage("docker compose"){
            steps{
                echo "starting container"
            }
        }
    }
}