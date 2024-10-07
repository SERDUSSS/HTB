#!/bin/bash

url="$1"

mkdir ./tokens

for i in {1..200}; do
	wget "$url/api.php/token/$i" -O ./tokens/$i
done

find ./tokens -empty -type f -delete
