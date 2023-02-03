# Install Vault on Kubernetes

Prerequisites:
- Kubernetes Vault Namespace must be deployed

## Setup Helm Repo
```shell
$ helm repo add hashicorp https://helm.releases.hashicorp.com
"hashicorp" has been added to your repositories
```

```shell
$ helm search repo hashicorp/vault
NAME            CHART VERSION APP VERSION DESCRIPTION
hashicorp/vault 0.6.0         1.4.3       Install and configure Vault on Kubernetes.
```

## Using Helm Charts
```shell
$ helm install vault hashicorp/vault --namespace vault -f values.yaml
```