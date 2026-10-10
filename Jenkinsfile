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
        stage ("Teraform plan") {
            steps {
                bat "terraform plan"
            }
        }
    }
}
