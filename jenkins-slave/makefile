build-jenkins-slave:
	@./build-and-push.sh base/jenkins-slave
build-base: build-jenkins-slave

build-jenkins-ephemeral-slave:
	@./build-and-push.sh ephemeral/jenkins-ephemeral-slave
build-jenkins-ephemeral-slave-maven:
	@./build-and-push.sh ephemeral/jenkins-ephemeral-slave-maven
build-ephemeral: build-jenkins-ephemeral-slave build-jenkins-ephemeral-slave-maven

build-jenkins-regular-slave:
	@./build-and-push.sh regular/jenkins-regular-slave
build-jenkins-regular-slave-maven:
	@./build-and-push.sh regular/jenkins-regular-slave-maven
build-regular: build-jenkins-regular-slave build-jenkins-regular-slave-maven

build: build-base build-ephemeral build-regular
