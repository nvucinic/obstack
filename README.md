# OBStack



# Manual installation:
## Install and configure apps manualy 

- ArgoCD :heavy_check_mark:	

<pre><code>kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml
kubectl get -n argocd secret/argocd-initial-admin-secret -o json | jq -r '.data.password' | base64 -d
</code></pre>



- Prometheus :heavy_check_mark:	

- Grafana :heavy_check_mark:

- Alert Manager :heavy_check_mark:

- Loki :heavy_check_mark:

https://grafana.com/docs/loki/latest/installation/helm/
<pre><code>helm repo add grafana https://grafana.github.io/helm-charts
helm repo update
helm upgrade --install loki grafana/loki-stack  --set grafana.enabled=true,prometheus.enabled=true,prometheus.alertmanager.persistentVolume.enabled=false,prometheus.server.persistentVolume.enabled=false
</code></pre>

- KubeBot :warning:

# Automatic:
## Automate installation through ArgoCD

Add ArgoCD Helm repository:

<pre><code>helm repo add argo https://argoproj.github.io/argo-helm
helm repo update
</code></pre>

Install ArgoCD with Helm and custom values. (Add git repo credentials to values.yaml)

<pre><code>helm install argocd argo/argo-cd --create-namespace -f ./values.yaml
</code></pre>

- ArgoCD :heavy_check_mark:

  Username: admin

  Password: <code>kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d</code>
- Prometheus :heavy_check_mark:

- Grafana  :heavy_check_mark: 

  Username: admin

  Password: <code>kubectl get -n obstack secret/obstack-grafana -o json | jq -r '.data."admin-password"' | base64 -d</code>

- Alert Manager :heavy_check_mark:

- Loki :heavy_check_mark:

- KubeBot :warning:

# TODO3:
## Tweaks and customizations

- Prometheus :x:

- Grafana  :x:
  - Dashboard
- Alert Manager :x:

- Loki :x: