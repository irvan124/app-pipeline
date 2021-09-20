pipeline {
    agent any

    triggers {
        githubPush()
    }

    stages {
        stage("Build"){
            steps {
                sh 'docker build -t irvan124/app-pipeline .'
            }
        }
        // stage("Testing"){}

        stage("Deliver"){
            steps {
                sh 'docker run --name app-pipeline -p 2021:2021 irvan124/app-pipeline'
            }
        }
    }
}