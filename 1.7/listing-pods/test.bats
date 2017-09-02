#!/usr/bin/env bats

function setup() {
	echo "Setting up 1.7 test: ucg17 listing pods"
	kubectl create namespace ucg-test
	kubectl --namespace=ucg-test run ucg17-listing-pods --image=busybox --restart=Never --overrides='{ "apiVersion": "v1", "metadata": { "namespace": "ucg-test" } }' --command -- sleep 3600
}

function teardown() {
	echo "Tearing down 1.7 test: ucg17 listing pods"
	kubectl --namespace=ucg-test delete po/ucg17-listing-pods
	kubectl delete namespace ucg-test
}

@test "ucg17 listing pods" {
	run go run main.go
	[ "$status" -eq 0 ]
  [ "${lines[0]}" = "[ucg17-listing-pods]" ]
}
