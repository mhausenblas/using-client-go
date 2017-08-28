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

See also  the [standalone example](listing-pods/main.go) for listing pods.
