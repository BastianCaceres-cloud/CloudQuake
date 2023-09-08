#!/bin/bash

# Modificar Linea 13 y 31 a 40 con los valores de tu cuenta


# Verifica que eks.yaml exista
if [[ ! -f eks.yaml ]]; then
    echo "Error: eks.yaml no existe en el directorio actual."
    exit 1
fi

# Establece el ambiente directamente en el código
ENVIRONMENT="sandbox"  # Cambia esto a "sandbox, dev,  qa" o "prod" según sea necesario

# Valida el valor de ENVIRONMENT
if [[ "$ENVIRONMENT" != "sandbox" && "$ENVIRONMENT" != "dev" && "$ENVIRONMENT" != "qa" && "$ENVIRONMENT" != "prod" ]]; then
    echo "Error: Valor de ENVIRONMENT inválido. Debe ser 'dev', 'qa' o 'prod'."
    exit 1
fi

# Establecer NAT_MODE basado en el ambiente
if [[ "$ENVIRONMENT" == "prod" ]]; then
    export NAT_MODE="HighlyAvailable"
else
    export NAT_MODE="Single"
fi



# Establecer las variables de entorno
export CLUSTER_NAME="pagopension-${ENVIRONMENT}"

export VPC_ID="vpc-037adc6ee9cb9654b"
export SUBNET_PRIVATE_1B="subnet-052e519657f5ae177"
export SUBNET_PRIVATE_1A="subnet-094726eea389c7f3a"
export SUBNET_PRIVATE_1C="subnet-02ab93862b4cedb2c"

export SUBNET_PUBLIC_1B="subnet-06ad01a8f2a40760a"
export SUBNET_PUBLIC_1A="subnet-0a8195b3ebc2d6984"
export SUBNET_PUBLIC_1C="subnet-013d49cd18467455d"



# Procesar el archivo YAML con envsubst
envsubst < eks.yaml > output.yaml

# Ahora puedes usar output.yaml con eksctl
eksctl create cluster -f output.yaml