pipeline{
  agent { label 'slave2' }

  stages{
     stage('git checkout'){
        steps{
              git branch: 'master',
              credentialsId: 'Git-https-cred',
              url: 'https://github.com/amoldipa/web_server_dockerfile.git'
        }
     }
     stage( 'Buidling Code'){
        steps{
           sh 'echo "Building  started"'
           sh 'whoami'
           sh 'echo ${PWD}'
           sh ' docker build -t mywebserver .'
           sh ' echo "Building done"'
           sh 'sudo yum install elinks -y'
           sh ' docker images'
        }
     }

     stage( 'Testing and Deploying'){
        steps{
           sh 'echo "Deployment Started  started"'
           sh 'sudo cp -rf ${WORKSPACE}/index.html /var/www/html/'
           sh 'elinks http://172.31.9.219/'
           //sh ' docker images'
        }
     }

     stage( ' Deploying with Docker container'){
        steps{
           sh 'echo "Deployment with Docker Container"'
           sh 'sudo cp -rf ${WORKSPACE}/index.html /tmp/myefs/docker_volume'
           sh 'docker run -itd --name mywebapp_${BUILD_NUMBER} -v /tmp/myefs/docker_volume:/tmp/ -p 300${BUILD_NUMBER}:80 mywebserver '
           sh 'elinks http://172.31.9.219:300${BUILD_NUMBER}/'
           //sh ' docker images'
        }
     }

  }

}

