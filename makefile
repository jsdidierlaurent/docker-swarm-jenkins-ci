build:
	@docker build -t jsdidierlaurent/rpi-jenkins-with-plugins rpi-jenkins-with-plugins/
start:
	@docker stack deploy --compose-file docker-stack.yml jenkins-ci