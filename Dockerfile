FROM centos: latest
MAINTAINER anshu7833@gmail.com
RUN yum install httpd -y\
zip \
unzip \
ADD https://www.free-css.com/assets/files/free-css-templates/download/page269/complex.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip complex.zip
RUN cp -rvf complex.zip/* .
RUN rm -rf complex.zip
CMD ["usr/sbin/httpd" "-D", "FOREGROUND"]
EXPOSE 80
