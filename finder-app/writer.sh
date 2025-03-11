
#!/bin/bash

# Check if both arguments are provided
if [ $# -ne 2 ]; then
    echo "Error: Two arguments required. Usage: $0 <file_path> <text_string>"
    exit 1
fi

writefile=$1
writestr=$2

# Create the directory path if it does not exist
dirname=$(dirname "$writefile")
mkdir -p "$dirname"

# Write the content to the file, overwriting if it exists
echo "$writestr" > "$writefile"

# Check if the file was successfully created
if [ $? -ne 0 ]; then
    echo "Error: Could not create or write to file '$writefile'"
    exit 1
fi

echo "File '$writefile' created successfully with content: '$writestr'"
exit 0
