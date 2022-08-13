#!/usr/bin/env bash

set -euxo pipefail

mc alias set deploy $MINIO_ENDPOINT $MINIO_ACCESS_KEY $MINIO_SECRET_KEY

insecure_option=""
if ["$MINIO_INSECURE" == "true"]; then
  insecure_option="--insecure"
fi

mc mirror --overwrite $insecure_option $1 "deploy/$2"
