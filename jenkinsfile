pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                checkout scm
                script {
                    sh 'chmod +x ./build.sh'
                    sh './build.sh dev'
                }
            }
        }

        stage('Deploy') {
            when {
                expression { env.BRANCH_NAME == 'dev' }
            }
            steps {
                script {
                    sh 'chmod +x ./deploy.sh'
                    sh './deploy.sh dev'
                }
            }
        }
    }
}
