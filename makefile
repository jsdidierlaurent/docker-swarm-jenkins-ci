start:
	@docker stack deploy --compose-file docker-compose.yml jenkins
stop:
	@docker stack rm jenkins