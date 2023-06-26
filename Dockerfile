FROM centos:latest

RUN yum install httpd -y

RUN systemctl start httpd && systemctl enable httpd

COPY index.html  /var/www/html 