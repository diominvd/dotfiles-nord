#!/bin/bash

# Get the current workspace index
CURRENT_WS=$(i3-msg -t get_workspaces | jq '.[] | select(.focused==true).num')

# Output the workspace index
echo "$CURRENT_WS"
