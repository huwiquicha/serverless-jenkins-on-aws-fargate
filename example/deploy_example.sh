#!/usr/bin/env bash
set -e

source vars.sh

export

# Start from a clean slate
rm -rf .terraform

terraform init -backend=true -backend-config="key=${TF_STATE_OBJECT_KEY}" -backend-config="region=${AWS_REGION}" -backend-config="bucket=${TF_STATE_BUCKET}" -backend-config="dynamodb_table=${TF_LOCK_DB}"

terraform plan

terraform apply -input=false -auto-approve=true -lock=true