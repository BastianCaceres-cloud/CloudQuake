portfoorward svc vault to local
export VAULT_ADDR='http://127.0.0.1:8200'
vault operator init
vault login


almacenar los sealead secret
en el front debes colocar 3 sealed secrets 
al final debes colocar  el root token
