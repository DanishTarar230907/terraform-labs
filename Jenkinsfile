pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/DanishTarar230907/terraform-labs.git'
            }
        }

        stage('Terraform Init') {
            steps {
                sh 'terraform init'
            }
        }

        stage('Terraform Plan') {
            steps {
                sh 'terraform plan'
            }
        }

        stage('Terraform Apply') {
            steps {
                sh 'terraform apply -auto-approve'
            }
        }
    }

    post {
        always {
            echo 'Pipeline finished!'
        }
    }
}
