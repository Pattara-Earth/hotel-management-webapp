FROM mysql:latest

WORKDIR /app

ENV MYSQL_DATABASE hotel
ENV MYSQL_ROOT_PASSWORD 1150
ENV MYSQL_USER goodapplication
ENV MYSQL_PASSWORD 1150
ADD hotel.sql /docker-entrypoint-initdb.d

EXPOSE 3306
