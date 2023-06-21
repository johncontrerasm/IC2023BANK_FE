pipeline{
    agent any

    stages{
        stage('docker build'){
            steps{
                script{
                    "docker build -f IC2023BANK/Dockerfile -t johncontrerasm/ic2023bank_fe IC2023vue"
                }
            }
        }

        stage('docker push'){
            steps{
                script{
                    sh "docker push johncontrerasm/ic2023bank_fe"
                }
            }
        }
    }

}

