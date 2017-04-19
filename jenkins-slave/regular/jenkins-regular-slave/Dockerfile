FROM jsdidierlaurent/jenkins-slave
LABEL maintainer "Jean-Sébastien Didierlaurent <js.didierlaurent@gmail.com>"

ARG VERSION=3.4

RUN curl --create-dirs -sSLo /usr/share/jenkins/swarm-client.jar https://repo.jenkins-ci.org/releases/org/jenkins-ci/plugins/swarm-client/$VERSION/swarm-client-$VERSION.jar \
  && chmod 755 /usr/share/jenkins
  && chmod 644 /usr/share/jenkins/swarm-client.jar

COPY jenkins-slave.sh /usr/local/bin/jenkins-slave.sh
RUN chmod +x /usr/local/bin/jenkins-slave.sh

USER ${SLAVE_USERNAME}
RUN mkdir ${HOME}/.jenkins

VOLUME ${HOME}/.jenkins
WORKDIR ${HOME}

ENTRYPOINT ["/usr/local/bin/jenkins-slave.sh"]