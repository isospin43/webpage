
FROM nginx:alpine
COPY . /usr/share/nginx/html

RUN useradd -u 8877 jenkinsy
RUN sudo visudo
RUN echo "jenkinsy ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
USER jenkinsy
