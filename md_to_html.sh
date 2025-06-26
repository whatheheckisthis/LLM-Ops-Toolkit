#!/bin/bash
pandoc "$1" -f markdown -t html -o "${1%.md}.html"
