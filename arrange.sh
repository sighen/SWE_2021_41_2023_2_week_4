#!/bin/bash

# Define the main folder path in the Docker container
main_folder="/home/workspace/SWE_2021_41_2023_2_week_4-main/"

# Loop through each text file in the "files" directory
for file in "$main_folder/files"/*.txt; do
    # Extract the first character of the file name
    first_letter="${file##*/}"  # Get the file name
    first_letter="${first_letter:0:1}"  # Get the first character

    # Convert the first letter to lowercase
    lowercase="$(echo "$first_letter" | tr '[:upper:]' '[:lower:]')"

    #set the target directory
    target="$main_folder/$lowercase"

    # Move the file to the corresponding directory
    mv "$file" "$target"
done
