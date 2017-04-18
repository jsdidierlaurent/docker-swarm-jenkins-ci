FROM jenkinsci/jenkins:2.55-alpine
LABEL maintainer "Jean-Sébastien Didierlaurent <js.didierlaurent@gmail.com>"

COPY conf/plugins.txt /usr/share/jenkins/ref/
RUN /usr/local/bin/plugins.sh /usr/share/jenkins/ref/plugins.txt