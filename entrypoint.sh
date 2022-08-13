#!/usr/bin/env bash

set -euxo pipefail

mc alias set deploy $MINIO_ENDPOINT $MINIO_ACCESS_KEY $MINIO_SECRET_KEY

mc mirror --overwrite $1 "deploy/$2"
