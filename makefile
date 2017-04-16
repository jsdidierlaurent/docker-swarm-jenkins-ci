build:
	@docker build -t jsdidierlaurent/jenkins-with-plugins jenkins-with-plugins/
start:
	@docker stack deploy --compose-file docker-stack.yml jenkins-ci