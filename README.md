# OBStack

## Install Helm
<pre><code>
kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml
</code></pre>


# TODO1:
## Install and configure apps manualy 

- ArgoCD :heavy_check_mark:	

- Prometheus :heavy_check_mark:	

- Grafana :heavy_check_mark:	

- Alert Manager :heavy_check_mark:	

 https://github.com/prometheus-operator/prometheus-operator  
 
<pre><code>
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo update
helm install prometheus prometheus-community/kube-prometheus-stack  --create-namespace  -n monitoring
</code></pre>


- Loki :x:

- KubeBot :warning:

# TODO2:
## Automate installation through ArgoCD

- ArgoCD :x:

- Prometheus :x:

- Grafana  :x:

- Alert Manager :x:

- Loki :x:
