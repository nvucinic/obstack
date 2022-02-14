# OBStack

## Install ArgoCD
<pre><code>
kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml
kubectl get -n argocd secret/argocd-initial-admin-secret -o json | jq -r '.data.password' | base64 -d
</code></pre>


# TODO1:
## Install and configure apps manualy 

- ArgoCD :heavy_check_mark:	

- Prometheus :heavy_check_mark:	

- Grafana :heavy_check_mark:	 admin // prom-operator

- Alert Manager :heavy_check_mark:

- Loki :heavy_check_mark:

https://grafana.com/docs/loki/latest/installation/helm/
<pre><code>helm repo add grafana https://grafana.github.io/helm-charts
helm repo update
helm upgrade --install loki grafana/loki-stack  --set grafana.enabled=true,prometheus.enabled=true,prometheus.alertmanager.persistentVolume.enabled=false,prometheus.server.persistentVolume.enabled=false
</code></pre>

- KubeBot :warning:

# TODO2:
## Automate installation through ArgoCD

Create ArgoCD application

Manually add and setup new project 'obstack' (now is default project) (??)
add private repo credentials.

Temp step while repo is private:
<pre><code>apiVersion: v1
kind: Secret
metadata:
  name: argoproj-https-creds
  namespace: argocd
  labels:
    argocd.argoproj.io/secret-type: repo-creds
stringData:
  url: https://github.com/nvucinic/obstack
  password: XXXX
  username: XXXX</code></pre>
(TODO: Argo initial setup)

<pre><code>kubectl apply -f apps/monitoring/obstack.yaml</code></pre>

- ArgoCD :x:

- Prometheus :heavy_check_mark:

- Grafana  :heavy_check_mark: 

  Username: admin

  Password: <code>kubectl get -n obstack secret/obstack-grafana -o json | jq -r '.data."admin-password"' | base64 -d</code>

- Alert Manager :heavy_check_mark:

- Loki :heavy_check_mark:

# TODO3:
## Tweaks and customizations

- Prometheus :x:

- Grafana  :x:
  - Dashboard
- Alert Manager :x:

- Loki :x: