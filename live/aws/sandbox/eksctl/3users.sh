#!/bin/bash

# Establecer las variables
cluster_name="pagopension-sandbox"
account_id="992927038462"
user_name="bcaceres"

# Ejecutar el comando con las variables establecidas
eksctl create iamidentitymapping \
    --cluster $cluster_name \
    --arn arn:aws:iam::$account_id:user/$user_name \
    --group system:masters \
    --username $user_name