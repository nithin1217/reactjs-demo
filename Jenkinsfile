pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                checkout scm
                script {
                    sh 'chmod +x ./build.sh'
                    sh './build.sh main'
                }
            }
        }

        stage('Deploy') {
            when {
                expression { env.BRANCH_NAME == 'main' }
            }
            steps {
                script {
                    sh 'chmod +x ./deploy.sh'
                    sh './deploy.sh main'
                }
            }
        }
    }
}
