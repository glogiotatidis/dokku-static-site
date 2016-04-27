FROM debian:stable

EXPOSE 5000
WORKDIR /app
ENTRYPOINT ["nginx", "-c",  "/nginx.conf"]

RUN apt-get update && apt-get install -y nginx-light
ADD nginx.conf /

ONBUILD ADD . /app
