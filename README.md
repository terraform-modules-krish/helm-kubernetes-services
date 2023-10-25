***WARNING: THIS REPO IS AN AUTO-GENERATED COPY.*** *This repo has been copied from [Gruntwork’s](https://gruntwork.io/) GitHub repositories so that you can consume it from your company’s own internal Git repositories. This copy is automatically created and updated by the `repo-copier` CLI tool. If you need to make changes to this repo, you should make the changes in a separate fork, and NOT make changes directly in this repo, as otherwise, the `repo-copier` will overwrite your changes! Please see the `repo-copier` [documentation](https://github.com/terraform-modules-krish/repo-copier) for more information on how the code is copied, how cross-references are updated, how the changelog is handled, etc.*

***

_You may find it valuable to view the following resources in the original repo. If these links give you a 404, visit https://app.gruntwork.io to gain access or email support@gruntwork.io if you need assistance._

[Home Page](https://github.com/gruntwork-io/helm-kubernetes-services/) |
[Pull Requests](https://github.com/gruntwork-io/helm-kubernetes-services/pulls) |
[Issues](https://github.com/gruntwork-io/helm-kubernetes-services/issues) |
[Releases and Assets](https://github.com/gruntwork-io/helm-kubernetes-services/releases)

_Alternatively, you can view a copied version of the resources listed above._

[Pull Requests](https://github.com/terraform-modules-krish/helm-kubernetes-services/blob/main/.github/PULL_REQUESTS.md) |
[Issues](https://github.com/terraform-modules-krish/helm-kubernetes-services/blob/main/.github/ISSUES.md) |
[ChangeLog](https://github.com/terraform-modules-krish/helm-kubernetes-services/blob/main/.github/CHANGELOG.md)

***

[![Maintained by Gruntwork.io](https://img.shields.io/badge/maintained%20by-gruntwork.io-%235849a6.svg)](https://gruntwork.io/?ref=repo_helm_services)

# Kubernetes Services Helm Charts

This package contains Helm charts for deploying your applications on Kubernetes clusters with
[Helm](https://helm.sh).

This package is a part of [the Gruntwork Infrastructure as Code
Library](https://gruntwork.io/infrastructure-as-code-library/), a collection of reusable, battle-tested, production
ready infrastructure code. Read the [Gruntwork Philosophy](GRUNTWORK_PHILOSOPHY.md) document to learn more about how
Gruntwork builds production grade infrastructure code.


## What is in this Package

This repo provides a Gruntwork IaC Package and has the following folder structure:

* [charts](https://github.com/terraform-modules-krish/helm-kubernetes-services/blob/v0.0.7/charts): This folder contains the main implementation code for this Package, broken down into multiple
  standalone charts.
* [examples](https://github.com/terraform-modules-krish/helm-kubernetes-services/blob/v0.0.7/examples): This folder contains examples of how to use the Charts.
* [test](https://github.com/terraform-modules-krish/helm-kubernetes-services/blob/v0.0.7/test): Automated tests for the Charts and examples.

The following charts are available in this package:

- [k8s-service](https://github.com/terraform-modules-krish/helm-kubernetes-services/blob/v0.0.7/charts/k8s-service): Deploy a set of Docker containers as a
  [Kubernetes Deployment](https://kubernetes.io/docs/concepts/workloads/controllers/deployment/),
  which provisions a Pod with a
  [Controller](https://kubernetes.io/docs/concepts/workloads/pods/pod-overview/#pods-and-controllers)
  that will handle replication and self-healing capabilities for the application. Additionally, expose the Deployment
  behind a [Service](https://kubernetes.io/docs/concepts/services-networking/service/) for a consistent endpoint to
  access the application.

<!-- NOT YET IMPLEMENTED
- [k8s-daemon-set](https://github.com/terraform-modules-krish/helm-kubernetes-services/blob/v0.0.7/charts/k8s-daemon-set): Deploy a set of Docker containers as a
  [Kubernetes DaemonSet](https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/),
  which provisions a Pod with a
  [Controller](https://kubernetes.io/docs/concepts/workloads/pods/pod-overview/#pods-and-controllers)
  that will automatically schedule one instance of the Pod on every Node available.
- [k8s-job](https://github.com/terraform-modules-krish/helm-kubernetes-services/blob/v0.0.7/charts/k8s-job): Deploy a set of Docker containers as a
  [Kubernetes Job](https://kubernetes.io/docs/concepts/workloads/controllers/job/),
  which provisions a Pod with a
  [Controller](https://kubernetes.io/docs/concepts/workloads/pods/pod-overview/#pods-and-controllers)
  that will ensure the specified number of Pod instances run to completion.
  a working go environment.
-->


## How do you install the charts in this Package?

The charts in this Package are distributed in the Gruntwork Helm Repo. You can access these charts by adding the
Gruntwork Helm Repo to your client:

```bash
$ helm repo add gruntwork https://helmcharts.gruntwork.io
```

Then, you can access any of the charts under the `gruntwork` name. For example, you can find all the Gruntwork charts by
searching for `gruntwork`:

```bash
$ helm search gruntwork
```

In general, each of the charts document the required and optional input values in the corresponding `values.yaml` file.
You can access the `values.yaml` of a Chart either by inspecting this repository, or using the `helm inspect` command.
For example, to see the values of the `k8s-service` chart, you can run:

```bash
$ helm inspect values gruntwork/k8s-service
```

Once you know what values the chart requires, you can install the chart by defining your own `values.yaml` file with the
required values defined. Then, you can install the chart to your Kubernetes cluster using `helm install`:

```bash
$ helm install -f values.yaml gruntwork/k8s-service
```

See the `helm install` help text for more configuration options.


## What is Kubernetes?

[Kubernetes](https://kubernetes.io) is an open source container management system for deploying, scaling, and managing
containerized applications. Kubernetes is built by Google based on their internal proprietary container management
systems (Borg and Omega). Kubernetes provides a cloud agnostic platform to deploy your containerized applications with
built in support for common operational tasks such as replication, autoscaling, self-healing, and rolling deployments.

You can learn more about Kubernetes from [the official documentation](https://kubernetes.io/docs/tutorials/kubernetes-basics/).


## What is Helm?

[Helm](https://helm.sh/) is a package and module manager for Kubernetes that allows you to define, install, and manage
Kubernetes applications as reusable packages called Charts. Helm provides support for official charts in their
repository that contains various applications such as Jenkins, MySQL, and Consul to name a few. Gruntwork uses Helm
under the hood for the Kubernetes modules in this package.

Helm consists of two components: the Helm Client, and the Helm Server (Tiller)

### What is the Helm Client?

The Helm client is a command line utility that provides a way to interact with Tiller. It is the primary interface to
installing and managing Charts as releases in the Helm ecosystem. In addition to providing operational interfaces (e.g
install, upgrade, list, etc), the client also provides utilities to support local development of Charts in the form of a
scaffolding command and repository management (e.g uploading a Chart).

### What is the Helm Server?

The Helm Server (Tiller) is a component of Helm that runs inside the Kubernetes cluster. Tiller is what
provides the functionality to apply the Kubernetes resource descriptions to the Kubernetes cluster. When you install a
release, the helm client essentially packages up the values and charts as a release, which is submitted to Tiller.
Tiller will then generate Kubernetes YAML files from the packaged release, and then apply the generated Kubernetes YAML
file from the charts on the cluster.


## How do you run applications on Kubernetes?

There are three different ways you can schedule your application on a Kubernetes cluster. In all three, your application
Docker containers are packaged as a [Pod](https://kubernetes.io/docs/concepts/workloads/pods/pod/), which are the
smallest deployable unit in Kubernetes, and represent one or more Docker containers that are tightly coupled. Containers
in a Pod share certain elements of the kernel space that are traditionally isolated between containers, such as the
network space (the containers both share an IP and thus the available ports are shared), IPC namespace, and PIDs in some
cases.

Pods are considered to be relatively ephemeral disposable entities in the Kubernetes ecosystem. This is because Pods are
designed to be mobile across the cluster so that you can design a scalable fault tolerant system. As such, Pods are
generally scheduled with
[Controllers](https://kubernetes.io/docs/concepts/workloads/pods/pod-overview/#pods-and-controllers) that manage the
lifecycle of a Pod. Using Controllers, you can schedule your Pods as:

- Jobs, which are Pods with a controller that will guarantee the Pods run to completion. See the [k8s-job
  chart](https://github.com/terraform-modules-krish/helm-kubernetes-services/blob/v0.0.7/charts/k8s-job) for more information.
- Deployments behind a Service, which are Pods with a controller that implement lifecycle rules to provide replication
  and self-healing capabilities. Deployments will automatically reprovision failed Pods, or migrate Pods to healthy
  nodes off of failed nodes. A Service constructs a consistent endpoint that can be used to access the Deployment. See
  the [k8s-service chart](https://github.com/terraform-modules-krish/helm-kubernetes-services/blob/v0.0.7/charts/k8s-service) for more information.
- Daemon Sets, which are Pods that are scheduled on all worker nodes. Daemon Sets schedule exactly one instance of a Pod
  on each node. Like Deployments, Daemon Sets will reprovision failed Pods and schedule new ones automatically on
  new nodes that join the cluster. See the [k8s-daemon-set chart](https://github.com/terraform-modules-krish/helm-kubernetes-services/blob/v0.0.7/charts/k8s-daemon-set) for more information.



<!-- TODO: ## What parts of the Production Grade Infrastructure Checklist are covered by this Module? -->


## Who maintains this Package?

This Package and its Charts are maintained by [Gruntwork](http://www.gruntwork.io/). If you are looking for help or
commercial support, send an email to
[support@gruntwork.io](mailto:support@gruntwork.io?Subject=Helm%20Kubernetes%20Services%20Module).

Gruntwork can help with:

* Setup, customization, and support for this Module.
* Packages and Modules for other types of infrastructure, such as VPCs, Docker clusters, databases, and continuous
  integration.
* Packages and Modules that meet compliance requirements, such as HIPAA.
* Consulting & Training on AWS, Terraform, and DevOps.


## How do I contribute to this Package?

Contributions are very welcome! Check out the [Contribution Guidelines](https://github.com/terraform-modules-krish/helm-kubernetes-services/blob/v0.0.7/CONTRIBUTING.md) for instructions.


## How is this Package versioned?

This Module follows the principles of [Semantic Versioning](http://semver.org/). You can find each new release, along
with the changelog, in the [Releases Page](../../releases).

During initial development, the major version will be 0 (e.g., `0.x.y`), which indicates the code does not yet have a
stable API. Once we hit `1.0.0`, we will make every effort to maintain a backwards compatible API and use the MAJOR,
MINOR, and PATCH versions on each release to indicate any incompatibilities.


## License

Please see [LICENSE](https://github.com/terraform-modules-krish/helm-kubernetes-services/blob/v0.0.7/LICENSE) and [NOTICE](https://github.com/terraform-modules-krish/helm-kubernetes-services/blob/v0.0.7/NOTICE) for how the code in this repo is licensed.

Copyright &copy; 2019 Gruntwork, Inc.
