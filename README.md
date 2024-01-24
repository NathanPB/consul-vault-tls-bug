# DISCLAIMER:
Stupid me confused ``tls`` with ``tsl``






# Description

This is a repository to reproduce a potential bug on HashiCorp's Consul and Vault.

## Steps

### Download binaries

```bash
./install.sh && source activate
```

### Generate certificates

```bash
consul tls ca create
consul tls cert create -server -dc global
```

### Start Consul

```bash
sudo consul agent -config-file=consul.hcl
```

### Start Vault

```bash
sudo vault server -config=vault.hcl
```

At this point, I expected Vault to be able to connect to Consul, but it fails with the following error (marked as WARN, not sure about that):

```
2024-01-23T20:58:32.710-0300 [WARN]  storage migration check error: error="Get \"https://127.0.0.1:8501/v1/kv/vault/core/migration\": remote error: tls: bad certificate"
```
