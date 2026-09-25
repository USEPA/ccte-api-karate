#!/bin/sh
set -eu

environment="${1:-dev}"
api="${2:-all}"

if [ "$api" = "all" ]; then
  tags='@all'
else
  tags="@$api,@smoke"
fi

"$(dirname "$0")/mvnw" test \
  "-Dkarate.env=$environment" \
  "-Dkarate.tags=$tags"