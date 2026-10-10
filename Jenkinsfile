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
	stage('Copy Terraform Variables') {
          steps {
            bat 'copy /Y "E:\\Jenkins\\terraform_practice\\%ENVIRONMENT%.tfvars" "%WORKSPACE%\\%ENVIRONMENT%.tfvars"'
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
	stage ("Production approval") {

          when {
	     expression {

                params.Environment == "prod"
	     }
	  }
          steps {

              input{ 
	         message: 'Approve the changes',
		 ok: 'approve',
		 submitter: 'prod-approvers'
	      }
	    }
	}
	
        stage ("Terraform apply") {
            steps {
                bat 'terraform apply --var-file="%Environment%.tfvars" --auto-approve'
            }
        }
         stage ("Terraform destroy") {
            steps {
                bat 'terraform destroy --var-file="%Environment%.tfvars" --auto-approve'
            }
        }

    }
}
