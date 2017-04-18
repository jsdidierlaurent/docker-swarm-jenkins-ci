start:
	@docker stack deploy --compose-file docker-stack.yml jenkins
stop:
	@docker stack rm jenkins