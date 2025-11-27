FROM ubuntu

RUN apt-get update
RUN apt-get install -y nginx
RUN apt-get install -y python3

COPY . /app

RUN useradd -m myuser
USER root

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]