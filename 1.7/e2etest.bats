#!/usr/bin/env bats

function setup() {
	echo "Setting up 1.7 test"
}

function teardown() {
	echo "Tearing down 1.7 test"
}

@test "ucg17 listing pods" {
	run go run listing-pods/main.go
	[ "$status" -eq 0 ]
  [ "${lines[0]}" = "[jump prom-2436944326-pr60g]" ]
}
