
FROM nginx:alpine
COPY . /usr/share/nginx/html

RUN useradd -u 8877 jenkinsy

USER jenkinsy
