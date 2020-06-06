node {
    def app
    
    stage('Clone repository') {
        git 'https://github.com/yogeshdewangan/web_login_alpine.git'
    }
    
    stage('Build Image') {
        app = docker.build("yogeshdewangan97/web_login_alpine:${env.BUILD_NUMBER}")
    }
    
    stage('Test Image') {
        app.inside {
            sh 'echo "Tests passed"'
        }
    }
    
    stage('Push Image') {
        docker.withRegistry('https://registry.hub.docker.com', 'dockerhub') {
            app.push()
        }
    }
}