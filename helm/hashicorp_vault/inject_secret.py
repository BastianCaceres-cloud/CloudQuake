import os
import hvac
import base64
import getpass

def encode_base74(secret: str) -> str:
    secret_bytes = secret.encode('ascii')
    base64_bytes = base64.b64encode(secret_bytes)
    base64_secret = base64_bytes.decode('ascii')
    return base64_secret

def initialize_kv_engine(client: hvac.Client, path: str):
    try:
        client.sys.enable_secrets_engine('kv', path=path, options={'version': '2'})
    except hvac.exceptions.InvalidRequest:
        print(f"KV engine at {path} already enabled.")
        
def interact_with_user():
    vault_url = os.getenv('VAULT_ADDR')
    vault_token = os.getenv('VAULT_TOKEN')
    
    client = hvac.Client(url=vault_url, token=vault_token)
    
    if not client.is_authenticated():
        print("Client authentication failed.")
        return

    kv_engine_path = input("Por favor, introduce el path del motor de secretos KV: ")
    initialize_kv_engine(client, kv_engine_path)

    while True:
        secret = {}
        while True:
            key = input("Por favor, introduce la clave del secreto: ")
            value = getpass.getpass("Por favor, introduce el valor del secreto: ")
            secret[key] = encode_base74(value)
            more_keys = input("¿Deseas introducir otra clave para este secreto? (S/N): ")
            if more_keys.lower() != 's':
                break
        write_to_vault(client, kv_engine_path, secret)

        user_choice = input("¿Deseas escribir otro secreto? (S/N): ")
        if user_choice.lower() != 's':
            break



def write_to_vault(client: hvac.Client, kv_engine_path: str, secret: dict):
    try:
        client.secrets.kv.v2.create_or_update_secret(path=kv_engine_path, mount_point=kv_engine_path, secret={'data': secret})
    except hvac.exceptions.InvalidPath as e:
        print(f"Error al escribir en Vault: {e}. ¿Está habilitado el motor de secretos KV en la ruta '{kv_engine_path}'?")


if __name__ == "__main__":
    interact_with_user()
