data "digitalocean_kubernetes_versions" "kube_versions" {}

resource digitalocean_kubernetes_cluster test-1 {
  name   = "test-1"
  region = "fra1"
  version = data.digitalocean_kubernetes_versions.kube_versions.latest_version

  node_pool {
    name       = "worker-pool"
    size       = "s-1vcpu-2gb"
    node_count = 2
  }
}

output "kube_config" {  
  value = digitalocean_kubernetes_cluster.test-1.kube_config.0.raw_config
  sensitive = true
}
