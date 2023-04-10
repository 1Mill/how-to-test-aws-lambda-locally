#!/usr/bin/env bash
set -e

function invoke_lambda() {
	# * LocalStack localhost endpoint
	local endpoint=http://localhost:4566

	# * Lambda configuration
	local function_name=hello-world-v0

	# * Invoke configuration
	local invoke_to_file=output.txt
	local invoke_type=RequestResponse

	# * Invoke lambda from LocalStack
	aws --endpoint $endpoint lambda invoke \
		--function-name $function_name \
		--invocation-type $invoke_type \
		$invoke_to_file
}

invoke_lambda
