#!/bin/bash

while getopts d: opt; do
    case $opt in
        d) dir=$OPTARG;;
        *) echo "Error: I need dir where are Java files."
            echo "Usage: skriptjava.sh -d ../../dir_java"
            exit -1;;
    esac
done

if [ ! -d $dir ]; then
    echo "Error; it is not a dir"
    exit -1
fi

pret=$(pwd)

cd $dir

ls -l *.java | tr -s " " " " | cut -d" " -f9 > lista.txt

file=$(echo $dir | rev | cut -d/ -f1 | rev)

cat lista.txt | while read line
do
    cat $line >> $file.java
done

rm lista.txt

mv $file.java -t $pret
