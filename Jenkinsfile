pipeline{
  agent { label 'slave2' }

  stages{
  //# stage('git checkout'){
   // #    steps{
    //#          git branch: 'master',
    //#          credentialsId: 'Git-https-cred',
    //#          url: 'https://github.com/amoldipa/web_server_dockerfile.git'
    //#    }
   // # }

     stage( 'Comppiling and Building usuing Maven' ){
        steps{
        sh '/usr/local/src/apache-maven/bin/mvn clean install'
        }   

     }

     stage( 'Buidling Docker Images'){
        steps{
           sh 'echo "Building  started"'
           sh 'whoami'
           sh 'echo ${PWD}'
           sh 'ls -l'
           sh ' sudo docker build -t mywebserver .'
           sh ' echo "Building done"'
           sh 'sudo yum install elinks -y'
           sh 'sudo  docker images'
        }
     }

     stage( 'Testing and Deploying using httpd - just copying code'){
        steps{
           sh 'echo "Deployment Started  started"'
           sh 'sudo cp -rf ${WORKSPACE}/index.html /var/www/html/'
           sh ' echo "elinks http://172.31.9.219/"'
           //sh ' docker images'
        }
     }

     stage( ' Deploying with Docker container'){
        steps{
           sh 'echo "Deployment with Docker Container"'
           sh 'sudo cp -rf ${WORKSPACE}/webapp/target/webapp /tmp/myefs/docker_volume'
           sh 'sudo docker run -itd --name mywebapp_${BUILD_NUMBER} -v /tmp/myefs/docker_volume/:/var/www/html/ -p 300${BUILD_NUMBER}:80 mywebserver '
           sh 'echo "elinks http://3.142.55.109:300${BUILD_NUMBER}/webapp/index_dev.jsp"'
           //sh ' docker images'
        }
     }
    
    stage( ' Deployment using Ansible' ){
       steps{
       sh 'echo "Deployment using Ansible playbook"'
       sh 'ansible-playbook depployment_using_docker.yml -i inventory.txt'
  
       }




    }

  }

}

