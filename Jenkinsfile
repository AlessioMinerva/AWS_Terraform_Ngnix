pipeline {
  agent any
  stages {
    stage('CheckoutCode') {
      steps {
        git(url: 'https://github.com/AlessioMinerva/AWS_Terraform_Ngnix', branch: 'main')
      }
    }

    stage('Comment') {
      steps {
        sh 'ls -la'
      }
    }

  }
}