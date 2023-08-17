aws cloudformation create-stack --stack-name MyECRStack --template-body file://ecr.yaml  \
--parameters \
ParameterKey=EcrRepositoryName1,ParameterValue=mi-repositorio \
ParameterKey=EcrRepositoryName2,ParameterValue=mi-repositorio-2 \
ParameterKey=EcrScanOnPush,ParameterValue=true \
ParameterKey=EcrImageTagMutability,ParameterValue=IMMUTABLE