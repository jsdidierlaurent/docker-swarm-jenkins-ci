FROM jsdidierlaurent/rpi-jenkins
LABEL maintainer "Jean-Sébastien Didierlaurent <js.didierlaurent@gmail.com>"

COPY plugins.txt /usr/share/jenkins/ref/
RUN /usr/local/bin/plugins.sh /usr/share/jenkins/ref/plugins.txt