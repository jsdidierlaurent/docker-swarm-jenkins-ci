FROM jsdidierlaurent/rpi-jenkins
LABEL maintainer "Jean-Sébastien Didierlaurent <js.didierlaurent@gmail.com>"

COPY plugins.txt ${JENKINS_HOME}/plugins.txt
RUN plugins.sh ${JENKINS_HOME}/plugins.txt && \
    rm -f ${JENKINS_HOME}/plugins.txt