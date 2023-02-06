cd deployments
git pull

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

# Opensearch
kubectl apply -f opensearch/namespace.yaml
helm repo add opensearch https://opensearch-project.github.io/helm-charts/
helm install opensearch-master opensearch/opensearch -f opensearch/master.yaml
helm install opensearch-data opensearch/opensearch -f  opensearch/data.yaml
helm install opensearch-client opensearch/opensearch -f  opensearch/client.yaml

