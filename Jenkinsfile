pipeline{
    agent any
    environment {
	    path = "${PATH}:${getTerraformPath()}"
                }

    stages{
              stage ("Terraform destroy"){
            steps{
                    sh 'terraform destroy -auto-approve'
                 }
            } 
    }
}
        
	/*stage ("Terraform Init"){
            steps{
                    sh "terraform init"
                 }
            }
	stage ('Terraform Plan'){
            steps{
                    sh 'terraform plan'
                }
            }
        stage ('Terraform apply'){
            steps{
                    sh 'terraform apply -auto-approve'
                }
            }   
	}
	post{
		success{
			sh 'terraform destroy -auto-approve'
		}
	}
}*/
	
	def getTerraformPath(){
	   def tfpath = tool name: 'terraform', type: 'terraform'  
	   return tfpath	
	}
