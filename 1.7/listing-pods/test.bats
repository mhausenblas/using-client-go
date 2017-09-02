#!/usr/bin/env bats

function setup() {
	echo "Setting up 1.7 test: ucg17 listing pods"
	kubectl run ucg17-listing-pods --image=busybox --restart=Never --command -- sleep 3600
}

function teardown() {
	echo "Tearing down 1.7 test: ucg17 listing pods"
	kubectl delete po/ucg17-listing-pods
}

@test "ucg17 listing pods" {
	run go run listing-pods/main.go
	[ "$status" -eq 0 ]
  [ "${lines[0]}" = "[ucg17-listing-pods]" ]
}
