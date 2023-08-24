pipeline {
  agent any
  stages {
    stage('CheckoutCode') {
      steps {
        git(url: 'https://github.com/AlessioMinerva/AWS_Terraform_Ngnix', branch: 'main')
      }
    }

    stage('ListFiles') {
      steps {
        sh 'ls -la'
      }
    }

  }
}