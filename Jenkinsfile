pipeline {
    agent any
    environment {
        dotnet = 'C:\\Program Files\\dotnet\\'
    }
    stages {
        stage('Checkout') {
            steps {
                git credentialsId: 'sabarish-ramakrishnan',
                    url: 'https://github.com/sabarish-ramakrishnan/swaggerapi/'
            }
        }

        stage('Restore packages') {
            steps {
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