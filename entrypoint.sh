#!/bin/sh -l

set -e

if [ $# -eq 0 ]; then
  echo "No arguments supplied"
  exit 123
fi

sh -c "REACT_APP_LOCAL_ALL=true firebase emulators:exec --project=ikea-coworker-app-ci --only firestore,functions,hosting '$*'"
