FROM centos:7
MAINTAINER harsha.akavaram@gmail.com
RUN yum install httpd -y
ADD index.html /var/www/html/

EXPOSE 80
CMD ["-D","FOREGROUND"]
ENTRYPOINT ["/usr/sbin/httpd"]
