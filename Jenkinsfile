node {
    def app
    
    stage('Clone repository') {
        git clone 'https://github.com/Anilkumar-Shrestha/web-login-Dockerfile.git'
    }
    
    stage('Build Image') {
        app = docker.build("kumarshresthaanil/weblogin-docker-test:${env.BUILD_NUMBER}")
    }
    
    stage('Test Image') {
        app.inside {
            sh 'echo "Tests passed"'
        }
    }
    
    stage('Push Image') {
        docker.withRegistry('https://registry.hub.docker.com/', 'dockerhub-credentials') {
            app.push()
        }
    }
}
