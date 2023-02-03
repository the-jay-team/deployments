pipeline {
    agent any

    environment {
        SSH_PRIVATE_KEY = credentials('cca56d5a-1f7a-4911-8238-3b917ef90ddc')
    }

    stages {
        stage('Build productive') {
            when {
                branch 'main'
            }
            steps {
                sh 'mkdir -p .ssh'
                sh 'echo $SSH_PRIVATE_KEY > .ssh/id_rsa'
                sh 'echo .ssh/id_rsa'
                sh 'cat .ssh/id_rsa'
                sh 'ssh -o StrictHostKeyChecking=no pipeline@master01.k8s.thejay.azubi.server.lan \'bash -s\' < script.sh'
            }
        }
    }
}