storage "file" {
  path = "/vault/data"
}

listener "tcp" {
  address     = "0.0.0.0:8200"
  tls_disable = 1  # ⚠️ Apenas desative o TLS se estiver usando um proxy reverso como o Traefik para cuidar da criptografia!
}

api_addr = "http://vault.alcateia.cloud:8200"
