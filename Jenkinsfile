pipeline{
    agent any
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
}
