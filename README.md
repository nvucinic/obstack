# OBStack

## Install Helm
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
<pre><code>
helm repo add grafana https://grafana.github.io/helm-charts
helm repo update
helm upgrade --install loki grafana/loki-stack  --set grafana.enabled=true,prometheus.enabled=true,prometheus.alertmanager.persistentVolume.enabled=false,prometheus.server.persistentVolume.enabled=false
</code></pre>

- KubeBot :warning:

# TODO2:
## Automate installation through ArgoCD

- ArgoCD :x:

- Prometheus :x:

- Grafana  :x:

- Alert Manager :x:

- Loki :x:
