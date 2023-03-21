pipeline {
    agent any
    stages {
        stage ('Packer-Init') {
            steps {
                dir ('packer') {
                    sh "packer init packer.pkr.hcl"
                }
            }
        }
        stage ('Packer-build') {
            steps {
                dir ('packer') {
                    sh "packer build packer.pkr.hcl"
                }
            }
        }
    }
    post {
        always {
            echo "### CLEARNING WORKSPACE ###"
            cleanWs()
        }
    }
}