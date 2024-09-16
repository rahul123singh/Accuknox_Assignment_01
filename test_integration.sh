#!/bin/bash

FRONTEND_URL="http://localhost:8080"

# Fetch the content from the frontend
response=$(curl -s $FRONTEND_URL)

# Check if the response contains the expected greeting message
if [[ "$response" == *"Hello from the Backend!"* ]]; then
  echo "Test Passed: Greeting message displayed correctly."
  exit 0
else
  echo "Test Failed: Greeting message not displayed."
  exit 1
fi
