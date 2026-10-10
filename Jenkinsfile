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
    }
}
