pipeline{
    agent any
    environment {
	    path = "${PATH}:${getTerraformPath()}"
                }

    stages{
                
        stage('Git Checkout'){
            steps{
                    git credentialsId: 'githubcred', url: 'https://github.com/Charan-Raj-K/dockeransiblejenkins.git'
                 }
           }
	stage ("Terraform Init"){
            steps{
                    sh "terraform init"
                 }
            }
	}
	
	def getTerraformPath(){
	   def tfpath = tool name: 'terraform', type: 'terraform'
	   return thpath	
	}
}
