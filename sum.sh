#!/usr/bin/env bash

sum=0

for num in ${@}
do
    sum=$(( num+sum ))
done

echo ${sum}

