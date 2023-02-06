pipeline {
    agent any

    environment {
        SSH_PRIVATE_KEY = credentials('ssh-private-key-plain-text')
    }

    stages {
        stage('Build productive') {
            when {
                branch 'main'
            }
            steps {
                sh 'ssh -o StrictHostKeyChecking=no pipeline@master01.k8s.thejay.azubi.server.lan \'bash -s\' < script.sh'
            }
        }
    }
}