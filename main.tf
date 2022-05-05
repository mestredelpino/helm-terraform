provider "helm" {
  kubernetes {
    config_path = var.kubeconfig_path
  }
}

resource "helm_release" "release" {
  for_each   = { for index, chart in var.releases: chart.chart => chart }#var.releases
  repository = each.value.repository
  name       = each.value.name
  chart      = each.value.chart
  values = [ "${file(each.value.values_file)}" ]
}