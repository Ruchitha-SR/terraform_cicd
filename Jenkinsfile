pipeline {
    agent any
    
    environment {
        TF_IN_AUTOMATION = 'true'
    }
    
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        
        stage('Terraform Init') {
            steps {
                script {
                    bat 'terraform init'
                }
            }
        }
        
        stage('Terraform Plan') {
            steps {
                script {
                    bat 'terraform plan -out=tfplan'
                }
            }
        }
        
        stage('Terraform Apply') {
            steps {
                script {
                    bat 'terraform apply -auto-approve tfplan'
                }
            }
        }
    }
}