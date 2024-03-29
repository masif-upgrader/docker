#!/bin/bash
set -exo pipefail

cd /src

if [ -e go.mod ]; then
	go mod download
	go generate ./...
fi

.travis-ci/mk-pkgs.sh

if [ -e go.mod ]; then go test -failfast -race -v -cover ./...; fi
