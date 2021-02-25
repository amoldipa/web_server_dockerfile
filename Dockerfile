FROM centos
MAINTAINER "Amol Pawar"
RUN yum install httpd -y
RUN  yum install git -y
RUN touch /root/test.txt
RUN echo "Hello World" >>/root/test.txt
COPY index.html /var/www/html/
ENV DR=/var/www/html/
EXPOSE 80
CMD ["-D", "FOREGROUND"]
ENTRYPOINT ["/usr/sbin/httpd"]



