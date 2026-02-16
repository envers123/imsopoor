#!/bin/bash


    rclone copy "/workspaces/imreallypoor/nomifactory/world" \
                "mega:Omnibackups/worlds_5min" \
                --update --progress
                

    echo "5-minute world backup at $(date)"
