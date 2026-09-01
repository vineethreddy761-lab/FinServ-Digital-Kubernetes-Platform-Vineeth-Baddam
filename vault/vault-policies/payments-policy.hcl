path "secret/data/production/payments/*" {
  capabilities = ["read", "list"]
}

path "transit/encrypt/finserv-payment-key" {
  capabilities = ["update"]
}

path "transit/decrypt/finserv-payment-key" {
  capabilities = ["update"]
}
