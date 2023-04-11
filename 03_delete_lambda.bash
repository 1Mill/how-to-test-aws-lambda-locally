#!/usr/bin/env bash
# ./03_delete_lambda.bash
set -e

function delete_lambda() {
	# * LocalStack localhost endpoint
	local endpoint=http://localhost:4566

	# * Lambda configuration
	local function_name=hello-world-v0

	aws --endpoint-url $endpoint lambda delete-function --function-name $function_name
}

delete_lambda
