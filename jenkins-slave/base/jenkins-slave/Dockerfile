FROM openjdk:8-jdk
LABEL maintainer "Jean-Sébastien Didierlaurent <js.didierlaurent@gmail.com>"

ENV SLAVE_USERNAME=jenkins

ENV HOME /home/${SLAVE_USERNAME}
RUN groupadd -g 10000 ${SLAVE_USERNAME}
RUN useradd -c "Jenkins user" -d $HOME -u 10000 -g 10000 -m ${SLAVE_USERNAME}


