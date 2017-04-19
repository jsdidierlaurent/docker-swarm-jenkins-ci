#!/bin/bash
# Doc : https://docs.docker.com/engine/security/https/#create-a-ca-server-and-client-keys-with-openssl
# This script create Certificate for docker daemon

# We need root access
sudo su

# Create dir for store cert
mkdir -p /etc/docker/ssl
cd /etc/docker/ssl

# First generate CA private and public keys
openssl genrsa -aes256 -out ca-key.pem 4096
openssl req -new -x509 -days 365 -key ca-key.pem -sha256 -out ca.pem

# Now you can create a server key 
openssl genrsa -out server-key.pem 4096
openssl req -subj "/CN=$HOSTNAME" -sha256 -new -key server-key.pem -out server.csr

# Sign the public key with our CA
echo subjectAltName = DNS:$HOST,IP:10.10.10.20,IP:127.0.0.1 > extfile.cnf
openssl x509 -req -days 365 -sha256 -in server.csr -CA ca.pem -CAkey ca-key.pem -CAcreateserial -out server-cert.pem -extfile extfile.cnf
rm -v extfile.cnf

# For client authentication, create a client key and certificate signing request
openssl genrsa -out key.pem 4096
openssl req -subj '/CN=client' -new -key key.pem -out client.csr

# Now sign the private key
echo extendedKeyUsage = clientAuth > extfile.cnf
openssl x509 -req -days 365 -sha256 -in client.csr -CA ca.pem -CAkey ca-key.pem -CAcreateserial -out cert.pem -extfile extfile.cnf
rm -v client.csr server.csr extfile.cnf