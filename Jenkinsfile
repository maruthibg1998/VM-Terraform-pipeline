pipeline {
    agent any

    environment {
        TF_IN_AUTOMATION = "true"

        // Azure Service Principal credentials
        ARM_CLIENT_ID       = credentials('ARM_CLIENT_ID')
        ARM_CLIENT_SECRET   = credentials('ARM_CLIENT_SECRET')
        ARM_TENANT_ID       = credentials('ARM_TENANT_ID')
        ARM_SUBSCRIPTION_ID = credentials('ARM_SUBSCRIPTION_ID')

        // SSH public key
        TF_VAR_ssh_public_key = credentials('TERRAFORM_VM_SSH_PUBLIC_KEY')
    }

    stages {

        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Terraform Init') {
            steps {
                sh 'terraform init'
            }
        }

        stage('Terraform Validate') {
            steps {
                sh 'terraform validate'
            }
        }

        stage('Terraform Plan') {
            steps {
                sh 'terraform plan -out=tfplan'
            }
        }

        stage('Terraform Apply') {
            steps {
                sh 'terraform apply -auto-approve tfplan'
            }
        }
    }

    post {
        success {
            echo 'Terraform Plan and Apply completed successfully'
        }
        failure {
            echo 'Terraform Plan or Apply failed'
        }
        always {
            cleanWs()
        }
    }
}

