# Using `client-go` with Kubernetes 1.7

## Listing pods

To list all pods in namespace `abc`, do the following:

```
clientset, _ := kubernetes.NewForConfig(config)
pods, _ := clientset.CoreV1().Pods('abc').List(metav1.ListOptions{})
for _, p := range pods.Items {
  fmt.Println(p.GetName())
}
```

See also the [standalone example](https://github.com/mhausenblas/using-client-go/blob/master/1.7/listing-pods/main.go) that you can run like so:

```
$ cd $GOPATH/src/mhausenblas/using-client-go/1.7/listing-pods
$ dep ensure
$ go run main.go
```
