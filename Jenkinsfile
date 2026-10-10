pipeline {
    agent {
        label "Windows-Node"
    }
    parameters {
        choice (
           name: "Environment",
	   choices: ["QA", "Test", "Prod"],
	   description: "Choose the correct environment"
	)
    }
    stages {
        stage ("Git Checkout") {
            steps {
	        cleanWs()
                checkout scm
            }
        }
        stage ("Terraform initialization") {
            steps {
                bat "terraform init"
            }
        }
	stage ("Terraform Plan") {
            steps {
                bat 'terraform plan --var-file="%Environment%.tfvars"'
            }
        }

    }
}
