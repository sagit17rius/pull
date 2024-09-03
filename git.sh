#!/bin/bash

DIR_NAME="my_directory"

if [ -d "$DIR_NAME" ]; then
  echo "Directory '$DIR_NAME' already exists."
else

  mkdir "$DIR_NAME"
  
  if [ $? -eq 0 ]; then
    echo "Directory '$DIR_NAME' created successfully."
  else
    echo "Failed to create directory '$DIR_NAME'."
  fi
fi
