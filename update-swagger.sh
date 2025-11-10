#!/bin/bash

# This script updates the swagger.yaml file with the latest API
# documentation from the API server and regenerates the API client code.
#
# Usage:
#   ./update-swagger.sh

echo "Updating swagger.yaml..."
curl -s https://api.seek.com.au/v1/swagger.yaml > swagger.yaml
if [ $? -ne 0 ]; then
  echo "Failed to update swagger.yaml"
  exit 1
fi

echo "Regenerating API client code..."
dart run build_runner build --delete-conflicting-outputs
if [ $? -ne 0 ]; then
  echo "Failed to regenerate API client code"
  exit 1
fi

echo "Done!"
