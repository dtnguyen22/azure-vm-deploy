  pipeline {
    agent {
      node {
        label "agent1"
      } 
    }
    //do not checkout the code to KEEP the STATE file ok
    options {
     skipDefaultCheckout(true)
    }
    
    stages {
        /*
      stage('clean workspace') {
        steps {
            cleanWs()
         }
      }
      */
      stage('fetch_latest_code') {
        steps {
          git branch: 'main', url: 'https://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@github.com/dtnguyen22/azure-vm-deploy.git'
        }
      }

      stage('TF Init&Plan') {
        steps {
          sh 'terraform init -no-color'
          sh 'terraform plan -no-color'
        }      
      }
/*
      stage('Approval') {
        steps {
          script {
            def userInput = input(id: 'confirm', message: 'Apply Terraform?', parameters: [ [$class: 'BooleanParameterDefinition', defaultValue: false, description: 'Apply terraform', name: 'confirm'] ])
          }
        }
      }
*/
      stage('TF Apply') {
        steps {
          sh 'terraform apply -auto-approve -no-color'
        }
      }
    } 
  }