FROM xrowgmbh/systemd

MAINTAINER "Björn Dieding" <bjoern@xrow.de>

RUN yum -y install httpd; yum clean all; systemctl enable httpd.service

EXPOSE 80

CMD ["/usr/sbin/init"]