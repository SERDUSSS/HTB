#!/bin/bash

url="$1"

mkdir ./users

for i in {1..200}; do
	wget "$url/api.php/user/$i" -O ./users/$i
done

find ./users -empty -type f -delete
