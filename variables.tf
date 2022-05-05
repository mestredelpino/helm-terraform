variable "kubeconfig_path" {
    description = "The full path of the Kubernetes config file where MinIO will be deployed"
}

variable "releases" {
    description = "A list containing the metadata and path to the values file for each Helm release you want to deploy. View README.md for more details"
    type = list
}
