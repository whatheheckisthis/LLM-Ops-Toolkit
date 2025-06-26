#!/bin/bash
if [[ -z "$VIRTUAL_ENV" ]]; then
  echo "Virtualenv is not active"
else
  echo "Using virtualenv at $VIRTUAL_ENV"
fi
