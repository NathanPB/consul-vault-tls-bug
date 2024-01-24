log_level = "debug"

storage "consul" {
  address = "127.0.0.1:8501"
  path    = "vault/"
  scheme  = "https"
  tls_ca_file   = "consul-agent-ca.pem"
  tsl_cert_file = "global-server-consul-0.pem"
  tsl_key_file  = "global-server-consul-0-key.pem"
}

listener "tcp" {
  address     = "127.0.0.1:8200"
  tls_disable = 1
}
