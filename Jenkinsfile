pipeline {
    agent {
        node {
            label 'AGENT-1'
        }
    }
    options {
        ansiColor('xterm')
    }
    parameters {
        choice(name: 'action', choices: ['apply', 'destroy'], description: 'Pick something')
    }
    // build
    stages {
        stage('Vpc') {
            steps {
                sh """
                    cd 01-vpc
                    terraform init -reconfigure
                    terraform apply -auto-approve
                """
            }
        }
        stage('sg') {
            steps {
                sh """
                    cd 02-sg
                    terraform init -reconfigure
                    terraform apply -auto-approve
                """
            }
        }
        stage('vpn') {
            steps {
                sh """
                    cd 03-vpn
                    terraform init -reconfigure
                    terraform apply -auto-approve
                """
            }
        }
        stage('db alb'){
            parallel{
                stage('DB') {
                    steps {
                        sh """
                            cd 04-databases
                            terraform init -reconfigure
                            terraform apply -auto-approve
                        """
                    }
                }
                stage('alb') {
                    steps {
                        sh """
                            cd 05-app-alb
                            terraform init -reconfigure
                            terraform apply -auto-approve
                        """
                    }
                }
            }
        }
    }
    // post build
    post { 
        always { 
            echo 'always saying hello even success of failure'
        }
        failure { 
            echo 'pipeline failed'
        }
        success{
            echo 'pipeline success'
        }
    }
}