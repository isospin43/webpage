
FROM nginx:alpine
COPY . /usr/share/nginx/html

#RUN curl -fsSLO https://get.docker/builds/Linux/x86_64/docker-17.04.0-ce.tgz \
#  && tar xzvf docker-17.04.0-ce.tgz \
#  && mv docker/docker /usr/local/bin \
#  && rm -r docker docker-17.04.0-ce.tgz

#RUN useradd -u 8877 jenkinsy
#RUN sudo visudo
#RUN echo "jenkinsy ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
#USER jenkinsy
