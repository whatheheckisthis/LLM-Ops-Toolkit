#!/bin/bash
tail -F "$1" | while read line; do echo "$(date +%F' '%T) $line"; done
