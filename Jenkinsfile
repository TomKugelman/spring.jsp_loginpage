pipeline {
    agent { 
        docker { 
            image 'maven:3-alpine'
            customWorkspace '/springboot-jsp-login-page-1.0.jar' 
            } 
        stages {
            stage('build') {
                steps {
                    sh 'mvn --version'
                }
            }
        }
    }
}