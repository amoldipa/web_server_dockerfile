# Pull centos base image from docker hub & include that in Docker file 

## For ex: 
1. docker pull centos

2. Check with "docker images" command

3. create Dockerfile & paste the contents given in the Dockerfile in this repo

4. docker build -t image_name .

5. Please run this Dockerfile in a VM having atleast 1GB RAM

6. docker run -itd --name mywebserver -p 8888:80 image_name:tag

| Syntax | Description |
| --- | ----------- |
| Header | Title |
| Paragraph | Text |
| Text | Doc |
