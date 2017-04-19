# Securing Docker Daemon Access

* Create certificate with ```create-cert.sh```
* Adding service-overrides.conf in /etc/systemd/system/docker.service.d/service-overrides.conf if it does not exist
* Adding to $DOCKER_OPTS (/etc/default/docker)
    ```-H tcp://0.0.0.0:2376 --tlsverify --tlscacert=/etc/docker/ssl/ca.pem --tlscert=/etc/docker/ssl/server-cert.pem --tlskey=/etc/docker/ssl/server-key.pem```
* Restarting docker with ```systemctl daemon-reload ; systemctl restart docker```