pipeline {
    agent any

    environment {
        SSH_PRIVATE_KEY = credentials('97652fd4-729b-4521-8c82-9f842319461b')
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
                sh 'wc -c .ssh/id_rsa'
                sh 'ssh -o StrictHostKeyChecking=no pipeline@master01.k8s.thejay.azubi.server.lan \'bash -s\' < script.sh'
            }
        }
    }
}