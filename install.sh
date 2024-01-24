#!/bin/bash

set -e

# Reset repository
rm -rf bin && mkdir -p bin

CONSUL_VERSION=1.17.1
VAULT_VERSION=1.15.4

curl -L -o ./consul.zip "https://releases.hashicorp.com/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_amd64.zip"
unzip -d bin consul.zip && rm consul.zip
chmod +x bin/consul

curl -L -o ./vault.zip "https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_amd64.zip"
unzip -d bin vault.zip && rm vault.zip
chmod +x bin/vault
