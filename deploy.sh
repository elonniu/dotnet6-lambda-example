#!/bin/bash

# Remove if previously deployed function exists
aws lambda delete-function --region ap-southeast-1 --function-name TestDotNet6 2>/dev/null

# Create lambda function
aws lambda create-function --function-name TestDotNet6 \
  --runtime "dotnet6" \
  --role $LAMBDA_ROLE_ARN \
  --handler dotnet6-lambda-example::HelloWorld.Function::HelloWorld \
  --zip-file fileb://./dotnet6-lambda-example/bin/Debug/net6.0/publish/package.zip
