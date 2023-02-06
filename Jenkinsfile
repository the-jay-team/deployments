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
                sh 'mkdir -p .ssh'
                sh 'echo $SSH_PRIVATE_KEY > .ssh/id_rsa'
                sh 'chmod 600 .ssh/id_rsa'
                sh 'wc -c .ssh/id_rsa'
                sh 'sha1sum .ssh/id_rsa'
                sh 'ssh -o StrictHostKeyChecking=no pipeline@master01.k8s.thejay.azubi.server.lan \'bash -s\' < script.sh'
            }
        }
    }
}