#!/bin/sh -l

# Replace "tag 1" with "tag 2" in the specified file
sed -i 's/tag 1/tag 2/' $1

# Print the modified file content (optional)
cat $1
