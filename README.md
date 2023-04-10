# How to Test AWS Lambdas Locally

<https://erik-ekberg.medium.com/how-to-test-aws-lambda-locally-6f07bd36abd9>

## Setup

1. Install `aws-cli ~> 2.2`
1. Install `docker ~> 20.10`
1. Install `docker-compose ~> 2.15`
1. Run `docker compose up`
1. Run `./scripts/01_create_lambda.bash`
1. Run `./scripts/02_invoke_lambda.bash`
1. Open `./output.txt`
