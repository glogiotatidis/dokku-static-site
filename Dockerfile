FROM debian:jessie

EXPOSE 5000
WORKDIR /app
ENTRYPOINT ["nginx", "-c",  "/app/nginx.conf"]

RUN apt-get update && apt-get install -y nginx-light

ONBUILD ADD . /app
