#!/bin/bash

# #! is shebang and /bin/bash is the path (every shell script should start with this path will change depending on the script for example /bin/sh is for basic shell, /bin/bash is for bash shell, /user/bin/pytjon3 is for python3, /user/bin/env node is for nodejs)

#use GITHUB_TOKEN in place of TOKEN in line num 6

TOKEN="$TOKEN"
GITHUB_OWMER="Bharath6864"
GITHUB_REPO="Shell-Scripts"
BRANCH_NAME="main"

# Specifiying to file path in gitrepo
FILE_PATH="config/config.properties"

#destination path is in which loaction you want to download the file
DESTINATION_PATH="./config.properties"

# Download the file from GitHub using curl you can het this in following link https://docs.github.com/en/rest/repos/contents?apiVersion=2022-11-28
# GitHub API raw URL
URL="https://raw.githubusercontent.com/$GITHUB_OWMER/$GITHUB_REPO/$BRANCH_NAME/$FILE_PATH"

curl -H "Authorization: token $GITHUB_TOKEN" -H "Accept: application/vnd.github.v3.raw" -o "$DESTINATION_PATH" "$URL"   

Check if the file was downloaded successfully

if [ -f "$DESTINATION_PATH" ]; then
    echo "File downloaded successfully to $DESTINATION_PATH"
else
    echo "Failed to download file"
fi
