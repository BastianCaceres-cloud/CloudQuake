vault secrets enable kv-v2

vault kv put kv-v2/migration DB_HOST="db.db.svc.cluster.local" DB_PORT="5432" DB_USERNAME="myuser" DB_PASSWORD="mypassword" DB_DATABASE="mydatabase"

# create policy to enable reading above secret
vault policy write migration - <<EOF
path "kv-v2/data/migration" {
  capabilities = ["read"]
}
EOF