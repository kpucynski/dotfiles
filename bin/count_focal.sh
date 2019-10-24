#!/bin/bash

#Count focal lenght used in pictures

find . -name "*.ARW" -exec exiftool {} \; | egrep 'Focal Length.* equivalent.*' | tee f.txt | sort | uniq -c | sort -r

#(find -iname "*.jpg" -exec exiv2  {} 2>/dev/null \;) | grep Focal | sort -t":" -k2,2n -h | uniq -c | sort -nr

