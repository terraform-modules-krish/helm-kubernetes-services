# Changelog


# v0.2.9
_Released Dec 17, 2021_
### Charts affected

* `k8s-service`

### Description

Fixed bug where Ingress resources mismatch the `networking.k8s.io/v1` API spec, affecting installs to k8s 1.19.

### Related links

* https://github.com/gruntwork-io/helm-kubernetes-services/pull/119
<br>

# v0.2.8
_Released Dec 6, 2021_
### Charts affected

* `k8s-service`

### Description

Updated the chart to allow specifying a sub path for the volume mount for `ConfigMap`.

### Special thanks

Special thanks to @bobalong79 for their contribution!

### Related links

* https://github.com/gruntwork-io/helm-kubernetes-services/pull/116
<br>

# v0.2.7
_Released Dec 6, 2021_
### Charts affected

* `k8s-service`

### Description

Updated the chart to use capabilities introspection to ensure the right API version is used for `Ingress` and `PodDisruptionBudget` resources based on the target kubernetes cluster version.


### Related links

* https://github.com/gruntwork-io/helm-kubernetes-services/pull/114
<br>

# v0.2.6
_Released Sep 16, 2021_
### Charts affected

* `k8s-service`

### Description

Added ability to configure `terminationGracePeriodSeconds`.

### Special thanks

Special thanks to @martinhutton and @meganjohn for their contribution!

### Related links

* https://github.com/gruntwork-io/helm-kubernetes-services/pull/107
* https://github.com/gruntwork-io/helm-kubernetes-services/pull/102
<br>

# v0.2.5
_Released Sep 7, 2021_
### Charts affected

* `k8s-service`

### Description

Added ability to configure `emptyDirs` that are backed by the worker node disk, rather than `tmpfs`.

### Special thanks

Special thanks to @jonnymatts-global for their contribution!

### Related links

* https://github.com/gruntwork-io/helm-kubernetes-services/pull/106
<br>

# v0.2.4
_Released Aug 25, 2021_
### Charts affected

* `k8s-service`

### Description

Added ability to configure `initContainers` on the `Deployment` using the new input `initContainers`.

### Special thanks

Special thanks to @davidlivingrooms for their contribution!

### Related links

* https://github.com/gruntwork-io/helm-kubernetes-services/pull/104
<br>

# v0.2.3
_Released Jul 23, 2021_
### Charts affected

* `k8s-service`

### Description

Updated `configMaps` and `secrets` to support injecting with `envFrom` so that all keys are automatically loaded as environment variables.

### Special thanks

Special thanks to @ralucas for their contribution!

### Related links

* https://github.com/gruntwork-io/helm-kubernetes-services/pull/101
<br>

# v0.2.24
_Released Aug 24, 2023_
### Charts affected

* `k8s-service`

### Description
Add support for CSI Driver secrets.


**Full Changelog**: https://github.com/gruntwork-io/helm-kubernetes-services/compare/v0.2.23...v0.2.24


### Related Links
#172 


### Contributors
A special thanks to @omar-devolute and @nadiia-caspar for their contributions!!


<br>

# v0.2.23
_Released Aug 10, 2023_
### Charts affected

* `k8s-service`

### Description
Add support for dnsPolicy


**Full Changelog**: https://github.com/gruntwork-io/helm-kubernetes-services/compare/v0.2.22...v0.2.23


### Related Links
#174 



<br>

# v0.2.22
_Released Jul 6, 2023_
### Charts affected

* `k8s-service`

### Description

Bump google.golang.org/grpc from 1.50.1 to 1.53.0
Details from upstream [google.golang.org/grpc's releases](https://github.com/grpc/grpc-go/releases).
<br>

# v0.2.21
_Released Jun 15, 2023_
### Charts affected

* `k8s-service`

### Description

Add configuration support for [HPA Scaling Behavior](https://kubernetes.io/docs/tasks/run-application/horizontal-pod-autoscale/#configurable-scaling-behavior) configuration.


### Related links

* #163 
<br>

# v0.2.20
_Released Jun 6, 2023_
### Charts affected

* `k8s-service`

### Description

Add support for startupProbes. 

### Special thanks

Special thanks to @dataviruset  for their contribution!

### Related links

* #164  
<br>

# v0.2.2
_Released Jun 4, 2021_
### Charts affected

* `k8s-service`

### Description

You can now override the fullname that appears in the resources managed by the `k8s-service` helm chart using the `fullnameOverride` input variable.

### Special thanks

Special thanks to @ralucas for their contribution!

### Related links

* https://github.com/gruntwork-io/helm-kubernetes-services/pull/96
<br>

# v0.2.19
_Released Mar 18, 2023_
### Charts affected

* `k8s-service`

### Description

Add support for priorityClassName in pod templates.

### Special thanks

Special thanks to @reynoldsme  for their contribution!

### Related links

* #159 
<br>

# v0.2.18
_Released Feb 1, 2023_
### Charts affected

* `k8s-service`

### Description

Add support for hostAliases in pod templates.

### Special thanks

Special thanks to @greysond  for their contribution!

### Related links

* #153 
<br>

# v0.2.17
_Released Jan 24, 2023_
### Charts affected

* `k8s-service`

### Description

Use `autoscaling/v2` API in HPA for Kubernetes versions >= 1.23.

### Special thanks

Special thanks to @paul-pop  for their contribution!

### Related links

* #151 

<br>

# v0.2.16
_Released Nov 4, 2022_
### Charts affected

* `k8s-service`

### Description

Updated the chart to allow specifying a sub path for the volume mount for `Secret`.

### Related links

* #149 
<br>

# v0.2.15
_Released Oct 18, 2022_
### Charts affected

* `k8s-service`

### Description

Update `k8s-service` Helm Chart to allow configuration of traffic policies for the created K8S `Service`.

## Special thanks

Special thanks to @denis256  for their contribution!

### Related links

* #148 

<br>

# v0.2.14
_Released Aug 12, 2022_
### Charts affected

* `k8s-service`

### Description

Added new input parameter `containerArgs` that can be used to define custom args that should be passed to the deployment spec. It behaves exactly as the `containerCommand`, the only difference is that it will populate the `args` instead of the `command` in the spec.

## Special thanks

Special thanks to @thiagosalvatore for their contribution!

### Related links

* https://github.com/gruntwork-io/helm-kubernetes-services/pull/143

<br>

# v0.2.13
_Released Jun 27, 2022_
### Charts affected

* `k8s-service`

### Description
Added support for configuring cluster ip on service. This will allow you to configure a [headless Kubernetes service](https://kubernetes.io/docs/concepts/services-networking/service/#headless-services).

### Related links

* https://github.com/gruntwork-io/helm-kubernetes-services/pull/141

<br>

# v0.2.12
_Released Feb 9, 2022_
### Charts affected

* `k8s-service`

### Description
Fixed bug where number based service port settings on `ingress` were not being interpreted correctly as number when set in `values.yaml`.


### Related links

* https://github.com/gruntwork-io/helm-kubernetes-services/pull/126
<br>

# v0.2.11
_Released Jan 19, 2022_
### Charts affected

* `k8s-service`

### Description

Added the ability to configure session affinity on the `Service`.

## Special thanks

Special thanks to @tdharris for their contribution!

### Related links

* https://github.com/gruntwork-io/helm-kubernetes-services/pull/124
<br>

# v0.2.10
_Released Jan 10, 2022_
### Charts affected

* `k8s-service`

### Description

Added the ability to configure custom container lifecycle hooks on the Pods using the new `lifecycleHooks` input value. Note that configuring a custom `preStop` lifecycle hook takes precedence over the existing `shutdownDelay` configuration. Refer to the input value documentation for `lifecycleHooks` in the [values.yaml file](https://github.com/gruntwork-io/helm-kubernetes-services/blob/6e832c5ad468a586d12beff0e2f06ee1961d1671/charts/k8s-service/values.yaml#L138) for more information.

### Related links

* https://github.com/gruntwork-io/helm-kubernetes-services/pull/120
<br>

# v0.2.1
_Released Jun 2, 2021_
### Charts affected

* `k8s-service`

### Description

Add support for overriding the deployment strategy using the new `deploymentStrategy` input variable.

### Special thanks

Special thanks to @amirha97 and @MaxKam for their contribution!

### Related links

* https://github.com/gruntwork-io/helm-kubernetes-services/pull/97
* https://github.com/gruntwork-io/helm-kubernetes-services/pull/84
<br>

# v0.2.0
_Released May 25, 2021_
### Charts affected

* `k8s-service` [**BACKWARD INCOMPATIBLE**]

### Description

The `aws.irsa` configuration has been deprecated and removed. Please use IRSA annotations on the Service Account. See the migration guide for more details.

## Migration guide

This release deprecates the `aws` input value which was originally used for configuring AWS IAM Roles for Service Accounts using manual injection of the projected token (via environment variables and secrets mounting in the Pod). In newer versions of EKS, you can instead rely on the mutating admission hook that comes with every EKS cluster. To use the mutating admission hook, you need to apply the annotation `eks.amazonaws.com/role-arn` on the ServiceAccount.

Since the old approach of manually projecting the tokens is deprecated by AWS, this release removes the manual projection of tokens via the `aws` input value. If you were relying on the `aws.irsa` input value, you must instead switch to using the annotation on the Service Account:

```
serviceAccount:
  name: "my-app"
  create: true
  annotations:
    eks.amazonaws.com/role-arn: "IAM_ROLE_ARN"
```

### Related links

* https://github.com/gruntwork-io/helm-kubernetes-services/pull/95
<br>

# v0.1.7
_Released Feb 5, 2021_
### Charts affected

* `k8s-service`

### Description

Add the ability to configure `tmpfs` mounts using the `scratchPaths` input value.

### Related links

* https://github.com/gruntwork-io/helm-kubernetes-services/pull/91
<br>

# v0.1.6
_Released Jan 21, 2021_
### Charts affected

* `k8s-service`

### Description

Add the ability to configure `securityContext` at the pod level using `podSecurityContext` input value.


### Special thanks

Special thanks to @RyuCaelum  for their contribution for this feature!

### Related links

* https://github.com/gruntwork-io/helm-kubernetes-services/pull/88
<br>

# v0.1.5
_Released Dec 17, 2020_
### Charts affected

* `k8s-service`

### Description

You can now configure custom resources that are not managed by the helm chart. Refer to [the updated docs](https://github.com/gruntwork-io/helm-kubernetes-services/blob/master/charts/k8s-service/README.md#how-do-i-deploy-additional-services-not-managed-by-the-chart) for more information.

### Special thanks

Special thanks to @paul-pop  for their initial contribution for this feature!

### Related links

* https://github.com/gruntwork-io/helm-kubernetes-services/pull/86
* https://github.com/gruntwork-io/helm-kubernetes-services/pull/82
<br>

# v0.1.4
_Released Oct 27, 2020_
### Charts affected

* `k8s-service`

### Description

You can now set persistent volumes on the Deployment using the new input `persistentVolumes`.

### Special thanks

Special thanks to @austinphilp for their contribution!

### Related links

* https://github.com/gruntwork-io/helm-kubernetes-services/pull/80
<br>

# v0.1.3
_Released Sep 8, 2020_
### Charts affected

* `k8s-service`

### Description

You can now set additional labels on the `Deployment` and `Pod` using the `additionalDeploymentLabels` and `additionalPodLabels` inputs.

### Special thanks

Special thanks to @TRReeve for their contribution!

### Related links

* https://github.com/gruntwork-io/helm-kubernetes-services/pull/75
<br>

# v0.1.2
_Released Aug 15, 2020_
### Charts affected

* `k8s-service`

### Description

Fix bug where `imagePullSecrets` was not correctly rendered on the `ServiceAccount` resource.

## Special thanks

Special thanks to @paul-pop for their contribution!

### Related links

* https://github.com/gruntwork-io/helm-kubernetes-services/pull/72
<br>

# v0.1.1
_Released Jun 10, 2020_
### Charts affected

* `k8s-service`

### Description

You can now configure environment variables from arbitrary sources using the `additionalContainerEnv` input value.

## Special thanks

Special thanks to @jjneely and @Dhertz for their contribution!

### Related links

* https://github.com/gruntwork-io/helm-kubernetes-services/pull/60
* https://github.com/gruntwork-io/helm-kubernetes-services/pull/67
<br>

# v0.1.0: Canary support
_Released Jan 15, 2020_
### Charts affected

* `k8s-service` [**BACKWARDS INCOMPATIBLE**]

### Description

This release introduces support for deploying [a canary deployment](https://martinfowler.com/bliki/CanaryRelease.html) to test new versions of your app. Refer to [the updated README](https://github.com/gruntwork-io/helm-kubernetes-services/tree/master/charts/k8s-service#how-do-i-create-a-canary-deployment) for more information.

## Migration guide

To use canaries, the existing `Deployment` needs to be updated to watch for different set of labels compared to the canary `Deployment`. Unfortunately, updating selector labels is an unsupported operation in Kubernetes and `helm` does not handle this transition gracefully.

To support this, the `Deployment` resource needs to be recreated so that they get the new labels. The easiest way to handle this is to delete the `Deployment` resource (using `kubectl delete deployment`) and let helm recreate it during the upgrade process. Note that this means you will have downtime as the Pods are being deleted and recreated, despite any pod disruption budgets.

If you wish to avoid downtime, you can perform a blue-green deployment by recreating the Deployment resource under a new name. You can do this with the following approach:

```
# Retrieve the configuration for the deployment created by helm.
kubectl get deployment $DEPLOYMENT_NAME -n $DEPLOYMENT_NAMESPACE -o yaml > temp.yaml

# Open temp.yaml and update the name of the Deployment so that it can be created alongside the old one.

# Apply the updated yaml file to create a temporary Deployment object under a different name and wait for rollout.
kubectl apply -f temp.yaml
kubectl rollout status deployments $DEPLOYMENT_NAME -n $DEPLOYMENT_NAMESPACE

# Delete the old deployment so that the chart will recreate it.
kubectl delete deployment $DEPLOYMENT_NAME -n $DEPLOYMENT_NAMESPACE

# Rollout the update. This should recreate the Deployment resource with the new selector labels
helm upgrade --wait $RELEASE_NAME gruntwork/k8s-service

# At this point, it is safe to delete the temporary deployment resource we created
kubectl delete -f temp.yaml
```


## Special thanks

Special thanks to @zackproser  for their contribution!

### Related links

* https://github.com/gruntwork-io/helm-kubernetes-services/pull/54
* https://github.com/gruntwork-io/helm-kubernetes-services/pull/45
* https://github.com/gruntwork-io/helm-kubernetes-services/pull/56
<br>

# v0.0.9
_Released Sep 23, 2019_
### Charts affected

* `k8s-service`

### Description

This release fixes two bugs:

- #40: sideCarContainers did not render correctly in the deployment
- #37: additionalPaths and additionalPathsHigherPriority required a serviceName when using with hosts.

### Related links

* https://github.com/gruntwork-io/helm-kubernetes-services/pull/41
<br>

# v0.0.8
_Released Sep 20, 2019_
### Charts affected

* `k8s-service`

### Description

- The `k8s-service` chart now supports injecting the projected Service Account token and environment variables into the Pod for the [IAM Roles for Service Account](https://docs.aws.amazon.com/eks/latest/userguide/iam-roles-for-service-accounts.html) feature in AWS EKS.

### Related links

* https://github.com/gruntwork-io/helm-kubernetes-services/pull/39
<br>

# v0.0.7
_Released Aug 28, 2019_
### Charts affected

* `k8s-service`

### Description

- Fix Ingress `tls` configuration issue that prevented chart from deploying 
- Security Context is now configurable, using the `securityContext` input map.

### Related links

* #35 
* #36 
<br>

# v0.0.6
_Released Aug 23, 2019_
### Charts affected

* `k8s-service`

### Description

- You can now specify the container command to run when deploying the app, using the `containerCommand` input value.
- The google managed certificate name is now configurable, using the `google.managedCertificate.name` input value.

### Related links

* https://github.com/gruntwork-io/helm-kubernetes-services/pull/32
* https://github.com/gruntwork-io/helm-kubernetes-services/pull/33
<br>

# v0.0.5
_Released Aug 22, 2019_
### Charts affected

* `k8s-service`

### Description

- You can now specify `google.managedCertificate` to deploy a Google Managed SSL Certificate.

### Related links

* #31 
<br>

# v0.0.4
_Released Aug 19, 2019_
### Charts affected

* `k8s-service`

### Description

- You can now specify `imagePullSecrets` on the `k8s-service` chart to specify which `Secret` to use when pulling down container images. This is useful when authenticating the container engine to a private registry.
- You can now directly append to the `Ingress` paths, using the `additionalPaths` and `additionalPathsHigherPriority` input values. See the [README](https://github.com/gruntwork-io/helm-kubernetes-services/tree/master/charts/k8s-service#registering-additional-paths) for more information.

### Related links

* https://github.com/gruntwork-io/helm-kubernetes-services/pull/29
* https://github.com/gruntwork-io/helm-kubernetes-services/pull/30
<br>

# v0.0.3
_Released Apr 15, 2019_
### Charts affected

* `k8s-service`

### Description

This release fixes a bug in the resource definition for the `PodDisruptionBudget`.

### Related links

* https://github.com/gruntwork-io/helm-kubernetes-services/pull/21
<br>

# v0.0.2
_Released Apr 12, 2019_
### Charts affected

* `k8s-service`

### Description

This release fixes a bug where the ingress features were not working.

### Related links

* https://github.com/gruntwork-io/helm-kubernetes-services/pull/20
<br>

# v0.0.13
_Released Jan 7, 2020_
### Charts affected

* `k8s-service`

### Description

This release fixes a bug where the `ServiceAccount` annotations were not properly aligned with the `metadata` block.

## Special thanks

Special thanks to @bouge  for their contribution!

### Related links

* https://github.com/gruntwork-io/helm-kubernetes-services/pull/53
<br>

# v0.0.12
_Released Dec 14, 2019_
### Charts affected

* `k8s-service`

### Description

- You can now optionally request to create the `ServiceAccount` directly from the chart, using the new `serviceAccount.create` parameter.
- You can now optionally configure [horizontal pod autoscalers](https://kubernetes.io/docs/tasks/run-application/horizontal-pod-autoscale/) using the `horizontalPodAutoscaler` parameter.

## Special thanks

Special thanks to @AechGG  for their contribution!

### Related links

* https://github.com/gruntwork-io/helm-kubernetes-services/pull/50
* https://github.com/gruntwork-io/helm-kubernetes-services/pull/51
<br>

# v0.0.11
_Released Oct 29, 2019_
### Charts affected

* `k8s-service`

### Description

You can now optionally deploy your service with a Prometheus `ServiceMonitor` using the new `serviceMonitor` input value.

## Special thanks

Special thanks to @efernandes-ANDigital  for their contribution!

### Related links

* https://github.com/gruntwork-io/helm-kubernetes-services/pull/46
* https://github.com/gruntwork-io/helm-kubernetes-services/pull/43
<br>

# v0.0.10
_Released Oct 14, 2019_
### Charts affected

* `k8s-service`

### Description

- You can now set a different service account for the Pods using the new `serviceAccount` input value.
- You can now disable port exposure of the containers by disabling the `containerPorts`. Previously the `disabled` flag was ignored.

### Related links

* https://github.com/gruntwork-io/helm-kubernetes-services/pull/44
<br>

# v0.0.1
_Released Mar 19, 2019_
### Charts affected

* `k8s-service` [**NEW**]

### Description

This release introduces the first Helm Chart included in this package. `k8s-service` is a helm chart that can be used to deploy your dockerized apps on Kubernetes while following best practices with support for rolling deployments and service discovery.

See [the chart documentation](https://github.com/gruntwork-io/helm-kubernetes-services/tree/master/charts/k8s-service) for more details.

### Related links

* https://github.com/gruntwork-io/helm-kubernetes-services/pull/7
<br>

