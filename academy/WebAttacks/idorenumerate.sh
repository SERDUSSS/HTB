#!/bin/bash

mkdir userdata

for i in {1..20}; do
    wget "$1/profile/api.php/profile/$i" -O ./userdata/$i
done

