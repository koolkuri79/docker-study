FROM ubuntu:latest
RUN apt-get update && apt-get install -y -q nginx

EXPOSE 80

COPY ./index.html /var/www/html/
COPY ./index.html /var/www/html/index2.html

CMD ["nginx","-g","daemon off;"]
