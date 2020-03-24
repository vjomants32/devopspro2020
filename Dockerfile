#Install from ubuntu
FROM ubuntu:18.04
#Update package
RUN apt update
#intstall with yes to pop up
RUN apt install -y nginx
COPY default /etc/nginx/sites-available/default
CMD ["/usr/sbin/nginx","-g", "daemon off;"]
EXPOSE 80


