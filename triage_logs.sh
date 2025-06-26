#!/bin/bash
mkdir -p processed release_notes logs/$(date +%F)
find . -type f -name "*.zip" -exec unzip {} -d ./processed \;
find . -type f -name "*.log" -exec mv {} ./logs/$(date +%F)/ \;
find . -type f -name "*.md" -exec mv {} ./release_notes/ \;
find . -type f -name "*.tmp" -delete
find . -type d -empty -delete
echo "Data swamp organized."
