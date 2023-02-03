rm -rf deployments
git clone git@github.com:the-jay-team/deployments.git
cd deployments

# Prod
kubectl apply -f jaytube-prod/namespace.yaml

# Stage
kubectl apply -f jaytube-stage/namespace.yaml

# Pipeline
kubectl apply -f pipeline/namespace.yaml
kubectl apply -f pipeline/jenkins-serviceaccount.yaml
kubectl apply -f pipeline/jenkins-deployment.yaml
kubectl apply -f pipeline/jenkins-service.yaml

# Vault
kubectl apply -f vault/namespace.yaml