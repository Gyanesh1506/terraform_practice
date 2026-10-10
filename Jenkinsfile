pipeline {
    agent {
        label "Windows-Node"
    }
    stages {
        stage ("Git Checkout") {
            steps {
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
                bat "terraform plan"
            }
        }

    }
}
