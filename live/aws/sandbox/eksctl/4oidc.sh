#!/bin/bash

# Establecer las variables
cluster_name="pagopension-sandbox"
account_id="992927038462"


# aws eks describe-cluster --name ${cluster_name} --region us-east-1 --query "cluster.identity.oidc.issuer" --output text

# aws iam list-open-id-connect-providers | find "19FFFCD3F3977FFF9BDD0437555E0A3A"

eksctl utils associate-iam-oidc-provider --region us-east-1 --cluster ${cluster_name} --approve