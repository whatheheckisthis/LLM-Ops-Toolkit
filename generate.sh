#!/bin/bash
mkdir -p files
openssl enc -aes-256-cbc -salt -in "$1" -out "files/$(basename $1).enc"
