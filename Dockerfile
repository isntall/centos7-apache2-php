FROM isntall/centos7-base:latest
MAINTAINER Archie Brentano <isntall.us@gmail.com>
RUN yum install --nogpg -y \
  httpd \
  php \
  php-cli \
  php-common \
  php-devel \
  php-pdo \
  php-gd \
  php-mbstring \
  php-mcrypt \
  php-mysql \
  php-pear \
  php-xml \
  php-xmlrpc
RUN pear channel-discover pear.drush.org && pear install drush/drush
RUN yum clean all
EXPOSE 80
EXPOSE 443

