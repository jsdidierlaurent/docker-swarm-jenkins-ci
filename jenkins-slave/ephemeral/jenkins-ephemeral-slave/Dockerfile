FROM jsdidierlaurent/jenkins-slave
LABEL maintainer "Jean-Sébastien Didierlaurent <js.didierlaurent@gmail.com>"

ARG VERSION=3.7
LABEL Description="This is a base image, which provides the Jenkins agent executable (slave.jar)" Vendor="Jenkins project" Version="${VERSION}"

RUN curl --create-dirs -sSLo /usr/share/jenkins/slave.jar https://repo.jenkins-ci.org/public/org/jenkins-ci/main/remoting/${VERSION}/remoting-${VERSION}.jar \
  && chmod 755 /usr/share/jenkins \
  && chmod 644 /usr/share/jenkins/slave.jar

USER ${SLAVE_USERNAME}
RUN mkdir ${HOME}/.jenkins

VOLUME ${HOME}/.jenkins
WORKDIR ${HOME}