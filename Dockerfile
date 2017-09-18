FROM debian:latest

RUN apt-get update && apt-get install -y apache2

RUN rm -rf /var/lib/apt/lists/* /var/cache/apt/

EXPOSE 80

CMD ["apache2ctl","-DFOREGROUND"]
