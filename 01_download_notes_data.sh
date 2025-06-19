#!/bin/bash

#Download the communit notes

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)" # To get the dir of the bash file
target_folder="$script_dir/Data" # The Folder of the Data dir
mkdir -p "$target_folder" # Create the folder in case it's already not created

curl -o "$target_folder/notes-00000.zip" "https://ton.twimg.com/birdwatch-public-data/2025/06/16/notes/notes-00000.zip" 

touch $target_folder/notes-00000.zip

