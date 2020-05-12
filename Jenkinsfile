pipeline {
    agent any
    environment {
        dotnet = 'C:\\Program Files\\dotnet\\'
    }
    stages {
        stage('Checkout') {
            steps {
                git credentialsId: 'blueocean',
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
        stage('Clean'){
            steps {
                bat "dotnet clean swaggerapi.csproj"
            }
        }
        stage('Build'){
            steps {
                bat "dotnet build swaggerapi.csproj --configuration Release"
            }
        }
    }
}