  pipeline {
    agent {
      node {
        label "agent1"
      } 
    }

    stages {
      stage('fetch_latest_code') {
        steps {
          git credentialsId: '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', url: 'https://github.com/dtnguyen22/azure-vm-deploy.git'
        }
      }

      stage('TF Init&Plan') {
        steps {
          sh 'terraform init'
          sh 'terraform plan'
        }      
      }

      stage('Approval') {
        steps {
          script {
            def userInput = input(id: 'confirm', message: 'Apply Terraform?', parameters: [ [$class: 'BooleanParameterDefinition', defaultValue: false, description: 'Apply terraform', name: 'confirm'] ])
          }
        }
      }

      stage('TF Apply') {
        steps {
          sh 'terraform apply -input=false'
        }
      }
    } 
  }