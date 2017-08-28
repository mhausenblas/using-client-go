# Using `client-go`

A versioned collection of snippets showing how to use [client-go](https://github.com/kubernetes/client-go/).
`client-go` is a bunch of Go packages enabling you to programmatically interact with a Kubernetes cluster.

Quick links | `client-go` [Go docs](https://godoc.org/k8s.io/client-go/) | `client-go` [repo](https://github.com/kubernetes/client-go/) | [1.7 snippets](1.7/)

**Table of Contents**:

- [Prerequisites](#prerequisites)
  - [Go](#go)
  - [Kubernetes cluster](#kubernetes-cluster)
  - [Get snippets](#get-snippets)
- Using `client-go` with [Kubernetes 1.7](#kubernetes-17)
- Using `client-go` with [Kubernetes 1.6](#kubernetes-16)
- Using `client-go` with [Kubernetes 1.5](#kubernetes-15)
- [Related](#related)

## Prerequisites

### Go

The snippets shown here have been tested using Go 1.8 and should also work with Go 1.9 (not tested, yet).

In order to manage dependencies (aka vendoring in Go) we use Go [dep](https://github.com/golang/dep).
If you don't have Go `dep` installed yet, simply do the following:

```
$ go get -u github.com/golang/dep/cmd/dep
$ dep init     # only the first time if no Gopkg.* exist in the project
$ dep ensure   # every time you add/change dependencies
```

Note that if you're new to Go dep and/or dependency management, you might want to read
[Using Go dep as a project maintainer](https://hackernoon.com/using-go-dep-as-a-project-maintainer-641d1f3006d7)
before you proceed.

### Kubernetes cluster

The snippets assume that you have a Kubernetes cluster running.
You can, for example, install [Minikube](https://github.com/kubernetes/minikube) or [Minishift](https://github.com/minishift/minishift) to test it locally.

### Get snippets

To enjoy all the snippets, do the following now:

```
$ mkdir -p $GOPATH/src/mhausenblas && cd $GOPATH/src/mhausenblas
$ git clone https://github.com/mhausenblas/using-client-go.git
```

## Kubernetes 1.7

Use the following in your `Gopkg.toml` file (add it if it doesn't exist, otherwise update it):

```
[[constraint]]
  name = "k8s.io/client-go"
  version = "v4.0.0"

[[constraint]]
  name = "k8s.io/apimachinery"
  branch = "release-1.7"
```

After you've updated your `Gopkg.toml` file, do `dep ensure` and commit it to your repo.

Now you can move on to the [Kubernetes 1.7 snippets](1.7/).

## Kubernetes 1.6

TBD

## Kubernetes 1.5

TBD

## Related

There are some resources available on the Internet that address the 'using client-go' topic, here are some I'm aware of:

- [client-go Examples](https://github.com/kubernetes/client-go/tree/master/examples) from the official repo
- [Using Kubernetes Go Client to Launch a Jupyter Notebook](https://www.rushtehrani.com/post/using-kubernetes-api/) 12/2016
- [Using the Kubernetes Client for Go](https://developers.redhat.com/blog/2016/11/25/using-the-kubernetes-client-for-go/) 11/2016
- StackOverflow [How can I create a simple client app with the Kubernetes Go library?](https://stackoverflow.com/questions/32554893/how-can-i-create-a-simple-client-app-with-the-kubernetes-go-library)
