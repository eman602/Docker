pipeline {
    agent any
    stages {
        stage('Downloading docker/Docker-compose'){
            //agent {label 'master'}
            steps{
                sh 'chmod +x ./script/*'
                sh 'bash ./script/before_installation.sh'
            }
        }
        
        stage('Deploying on docker-compose'){
            //agent {label 'manager_node'}
            steps{
                
                sh './script/docker.sh'
            }
        }
    }

}