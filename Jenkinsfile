pipeline {
    agent any

    environment {
        ENV = "${env.BRANCH_NAME}"
        TF_WORKDIR = "environments/${env.BRANCH_NAME}"
    }

    stages {
        stage('checkout') {
            steps {
                git branch: "${env.BRANCH_NAME}", url: 'https://github.com/Muhilan25/Infra-deployment-pipeline.git'
            }
        }

        stage('Terraform init') {
            steps {
                dir("${TF_WORKDIR}") {
                    sh 'terraform init'
                }
            }
        }

        stage('Terraform plan') {
            steps {
                dir("${TF_WORKDIR}") {
                    sh 'terraform plan -out=tfplan'
                    sh 'terraform show -no-color tfplan > tfplan.txt'
                    sh 'cat tfplan.txt'
                }
            }
        }

        stage('Approval') {
           /* when {
                expression {env.BRANCH_NAME == "production"}
            }
            */
            steps {
                input message: "Aproove the deployment to production?", ok: 'Deploy'
            }
        }

        stage('Terraform apply') {
            steps {
                dir("${TF_WORKDIR}")
                sh 'terraform apply tfplan'
            }
        }
    }
}