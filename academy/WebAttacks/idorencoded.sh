#!/bin/bash

mkdir data

for i in {1..20}; do
    for data in $(echo -n $i | base64 | urlencode | sed 's/%0a//'); do
        wget "$1/download.php?contract=$data" -O ./data/$data
    done
done

