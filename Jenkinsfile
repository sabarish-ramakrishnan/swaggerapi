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
        stage('Publish'){
            steps{
                bat """
                    dotnet publish -c Release -o published/
                """
            }
        }
    }

    post{
        always {
            emailext body: "${currentBuild.currentResult}: Job   ${env.JOB_NAME} build ${env.BUILD_NUMBER}\n More info at: ${env.BUILD_URL}",
            recipientProviders: [[$class: 'DevelopersRecipientProvider'], [$class: 'RequesterRecipientProvider']],
            subject: "Jenkins Build ${currentBuild.currentResult}: Job ${env.JOB_NAME}"
        }
    }
}