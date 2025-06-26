#!/bin/bash
find ./logs -name "*.log" -type f -mtime +7 -exec rm {} \;
