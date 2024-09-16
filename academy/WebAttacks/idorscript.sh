#!/bin/bash

url="$1"

for i in {1..20}; do
        for link in $(curl -s -X POST -d "uid=$i" "$url/documents.php" | grep -oP ".*\.txt"); do
                echo $link
        done
done

