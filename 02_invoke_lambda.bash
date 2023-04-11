#!/usr/bin/env bash
set -e

function invoke_lambda() {
	# * LocalStack localhost endpoint
	local endpoint=http://localhost:4566

	# * Lambda configuration
	local function_name=hello-world-v0

	# * Invoke configuration
	local invoke_payload='{ "name": "Alice" }'
	local invoke_to_file=response.json
	local invoke_type=RequestResponse

	# * Invoke lambda from LocalStack
	aws --endpoint $endpoint lambda invoke \
		--cli-binary-format raw-in-base64-out \
		--function-name $function_name \
		--invocation-type $invoke_type \
		--payload "$invoke_payload" \
		$invoke_to_file
}

invoke_lambda
