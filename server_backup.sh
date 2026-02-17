#!/bin/bash
# Upload multiple folders to rclone, skipping existing files

# --- Folder 1 ---
LOCAL1="/workspaces/imsopoor/nomifactory/backups"
REMOTE1="mega:Omnibackups/backup"
rclone copy "$LOCAL1" "$REMOTE1" --update --verbose --progress --ignore-existing
echo "Folder backups uploaded at $(date)"

# --- Folder 2 ---
LOCAL2="/workspaces/imsopoor/nomifactory/world"
REMOTE2="mega:Omnibackups/worlds"
rclone copy "$LOCAL2" "$REMOTE2" --update --verbose --progress
echo "Folder worlds uploaded at $(date)"

