# 依赖 sshd_ubuntu 的镜像创建
FROM sshd:dockerfile

MAINTAINER junjie wangjunjie@shumei.com

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get -yq install apache2 && \ 
	apt-get -yq install tzdata && \
	rm -rf /var/lib/apt/lists/*

RUN echo "Asia/Shanghai" > /etc/timezone && \
	dpkg-reconfigure -f noninteractive tzdata

ADD run.sh /run.sh
RUN chmod 755 /*.sh

RUN mkdir -p /var/lock/apache2 && mkdir -p /app && rm -rf /var/www/html && \
	ln -s /app /var/www/html

COPY /sample /app

ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2
ENV APACHE_PID_FILE /var/run/apache2.pid
ENV APACHE_RUN_DIR /var/log/apache2
ENV APACHE_LOCK_DIR /var/lock/apache2
ENV APACHE_SERVERADMIN amin@localhost
ENV APACHE_SERVERNAME localhost
ENV APACHE_SERVERALLAS docker.localhost
ENV APACHE_DOCUMENTROOT /var/www

EXPOSE 80
WORKDIR /app
CMD ["/run.sh"] 
