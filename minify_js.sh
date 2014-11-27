#!/bin/bash
cd /var/www
find -type d | while read directory
do
  echo "processing: ${directory#"./"}"
  cd "/var/www/${directory#"./"}"
        for FILE in `ls *.js`
                do
                  java -jar ~/yuicompressor/yuicompressor-2.4.8.jar --type js -o "mini_$FILE" "$FILE"
                  mv "mini_$FILE" "$FILE"
                done
done
