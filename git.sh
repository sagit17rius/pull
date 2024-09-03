#!/bin/bash

# Directory name (passed as an argument or hardcoded)
DIR_NAME=${1:-"my_directory"}

# Check if the directory exists
if [ -d "$DIR_NAME" ]; then
  echo "Directory '$DIR_NAME' already exists."
else
  # Create the directory
  mkdir "$DIR_NAME"
  
  if [ $? -eq 0 ]; then
    echo "Directory '$DIR_NAME' created successfully."
  else
    echo "Failed to create directory '$DIR_NAME'."
  fi
fi