FROM cargo.caicloudprivatetest.com/qatest/php:7.0-apache
COPY . /var/www/html/
EXPOSE 80
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf
RUN  echo "ServerName localhost" >>  /etc/apache2/conf-available/servername.conf
RUN a2enconf servername

CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
