#!/bin/bash
echo "Starting deployment script for multi-environment setup..."
if [ "$1" == "staging" ]; then
  echo "Simulating deployment to Staging..."
  exit 0
elif [ "$1" == "production" ]; then
  echo "Simulating deployment to Production..."
  exit 0
else
  echo "Usage: ./deploy.sh [staging|production]"
  exit 1
fi
