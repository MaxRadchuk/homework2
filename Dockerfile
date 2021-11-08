FROM httpd:2.4
COPY index.html /var/www/html/index.html
RUN \
  apt-get update && \
  apt-get -y install apache2 

EXPOSE 80 

CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]