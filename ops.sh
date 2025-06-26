#!/bin/bash

show_menu() {
  echo "Ops Utilities Toolkit"
  echo "1) Initialize Environment"
  echo "2) Backup Repo"
  echo "3) Cleanup Logs"
  echo "4) Timestamp Tail"
  echo "5) Markdown to HTML"
  echo "6) Exit"
}

while true; do
  show_menu
  read -rp "Select an option: " option
  case $option in
    1) bash scripts/init_environment.sh ;;
    2) bash scripts/backup_repo.sh ;;
    3) bash scripts/cleanup_logs.sh ;;
    4) read -rp "Log file path: " file; bash scripts/timestamp_tail.sh "$file" ;;
    5) read -rp "Markdown file: " file; bash scripts/md_to_html.sh "$file" ;;
    6) exit 0 ;;
    *) echo "Invalid option" ;;
  esac
done
