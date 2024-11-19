pipeline {
    agent any
    
    stages{
        stage("Code"){
            steps{
                echo "Cloning the code"
                git url: "https://github.com/shraddhagupta525/my-web.git", branch: "master"
            }
            
        }
        stage("Build"){
            steps{
                echo "Building the image" 
                sh "docker build -t sample-web ."
            }
            
        }
        stage("Push to Docker Hub"){
            steps{
                echo "Pushing the image to docker hub"
                withCredentials([usernamePassword(credentialsId:"dockerHub",passwordVariable:"dockerHubPass",usernameVariable:"dockerHubUser")]){
                sh "docker tag sample-web ${env.dockerHubUser}/sample-web:latest"
                sh "docker login -u ${env.dockerHubUser} -p ${env.dockerHubPass}"
                sh "docker push ${env.dockerHubUser}/sample-web:latest"
                }
                }
        }
        stage("Deploy"){
            steps{
                echo "Deploying the container"
                sh "docker-compose down && docker-compose up -d"

            }
            
        }
    }
}