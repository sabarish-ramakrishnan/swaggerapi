pipeline {
    agent any
    environment {
        dotnet = 'C:\\Program Files\\dotnet\\'
    }
    stages {
        stage('Checkout') {
            steps {
                git credentialsId: 'Git',
                    url: 'https://github.com/sabarish-ramakrishnan/swaggerapi/',
                    branch: 'master'
            }
        }

        stage('Restore packages') {
            steps {
                bat "dotnet restore swaggerapi.csproj"
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