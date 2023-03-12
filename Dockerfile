FROM ubuntu
RUN apt-get update
RUN apt-get install apache2 -y
RUN touch file1 /tmp
COPY index.html /var/www/html/
CMD ["/usr/sbin/apachectl","-D","FOREGROUND"]
