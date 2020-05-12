pipeline {
    agent any 
    environment {
        dotnet = 'C:\\Program Files\\dotnet\\'
    }
    stages {
        stage name: "Checkout",  body: {
            git credentialsId: 'sabarish-ramakrishnan', 
            url: 'https://github.com/sabarish-ramakrishnan/swaggerapi/', 
            branch: 'master'
        }
        stage name: "Restore packages",  body: {
            step{
                bat "dotnet restore swaggerapi.csproj"
                }
        }
        stage('Build') { 
            steps {
                echo message: "hello test!!"
            }
        }
    }
}