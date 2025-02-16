pipeline {
    agent any
    
    environment {
        // Assuming Terraform is installed in C:\Program Files\terraform
        PATH = "${PATH};C:\\Users\\marti\\Downloads\\terraform_1.10.5_windows_amd64"
        AWS_CREDENTIALS = credentials('aws-credentials')
    }

    stages {
        stage('Verify Tools') {
            steps {
                // Verify Terraform is accessible
                bat 'terraform --version'
            }
        }
        
        stage('Terraform Init') {
            steps {
                bat 'terraform init'
            }
        }
        
        stage('Terraform Plan') {
            steps {
                bat 'terraform plan -out=tfplan'
            }
        }
        
        stage('Terraform Apply') {
            steps {
                bat 'terraform apply -auto-approve tfplan'
            }
        }
    }
}