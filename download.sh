#!/bin/bash

set -eu

package=$1
sha=$2
org=${3:-phacility}

curl -L https://github.com/${org}/${package}/archive/${sha}.tar.gz | tar -xzf -
# The archive contains a directory with the sha, move it to a path without it
mv $package-$sha* $package

