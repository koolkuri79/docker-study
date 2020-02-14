FROM ubuntu:latest
RUN apt-get update && apt-get install -y -q nginx

EXPOSE 80
EXPOSE 8080

COPY ./index.html /usr/share/nginx/html/

CMD ["nginx","-g","daemon off;"]
