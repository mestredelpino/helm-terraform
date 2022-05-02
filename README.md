
This terraform scripts allow you to deploy any amount of Helm releases on Kubernetes by providing some metadata and a "values.yaml" file for 
each release.

## Automated deployment of Helm releases

1. Clone the repo

```
git clone https://github.com/mestredelpino/helm-terraform.git
```

2. Create a file "terraform.tfvars" and paste these variables to deploy MinIO on Kubernetes.
```
kubeconfig-path     = "kubeconfig"

releases = [
  {
    name = "harbor"
    chart = "harbor"
    values-file = "harbor-values.yaml"
    repository = "https://charts.bitnami.com/bitnami"
  }
]
```

3. On a console, run:

```
terraform init
terraform apply
```

And that's it! You deployed a bunch of Helm releases with Terraform!


