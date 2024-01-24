log_level = "debug"

data_dir = "/var/consul-test/data"
datacenter = "global"

server = true
bootstrap_expect = 1
bind_addr = "127.0.0.1"
client_addr = "0.0.0.0"

verify_incoming = true
verify_outgoing = true
verify_server_hostname = true
ca_file   = "consul-agent-ca.pem"
cert_file = "global-server-consul-0.pem"
key_file  = "global-server-consul-0-key.pem"

auto_encrypt {
  allow_tls = true
}

ports {
  http = -1
  https = 8501
}
