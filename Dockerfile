FROM debian:latest

RUN apt-get update && apt-get install -y apache2
RUN rm -rf /var/lib/apt/lists/* /var/cache/apt/

VOLUME ["/var/www/html/","/etc/apache2/"]

EXPOSE 80

CMD ["apache2ctl","-DFOREGROUND"]
