module github.com/terraform-modules-krish/helm-kubernetes-services/test

go 1.16

require (
	github.com/GoogleCloudPlatform/gke-managed-certs v1.0.5
	github.com/ghodss/yaml v1.0.0
	github.com/terraform-modules-krish/terratest v0.38.6
	github.com/prometheus-operator/prometheus-operator/pkg/apis/monitoring v0.52.1
	github.com/stretchr/testify v1.7.0
	k8s.io/api v0.22.3
	k8s.io/apimachinery v0.22.3
)
