#!/bin/sh

set -e

# Install dependencies
yarn global add @vue/cli
yarn add vue-cli-plugin-s3-deploy@next
yarn install

# Build the project
yarn build

# Only attempt deployment if AWS credentials are provided
if [ -n "$AWS_ACCESS_KEY_ID" ] && [ -n "$AWS_SECRET_ACCESS_KEY" ]; then
  echo "AWS credentials found, proceeding with deployment..."
  yarn deploy
else
  echo "AWS credentials not provided, skipping deployment..."
  # Exit successfully since this might be intentional (e.g., during testing)
  exit 0
fi