#!/bin/bash

img=../vision/matching/landmarks/query/query.jpg
echo "(1) Your image file is:"
echo "$img"      

resp=`wget -q -U "Mozilla/5.0" --post-file $img \
                               --header "Content-Type: image/jpeg" \
                               -O - "localhost:8081/" `
echo Image data: $resp
