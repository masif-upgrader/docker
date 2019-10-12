#!/bin/bash
set -exo pipefail

cd /src

go mod download
.travis-ci/mk-pkgs.sh
go test -failfast -race -v -cover
