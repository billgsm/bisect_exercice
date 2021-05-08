#!/usr/bin/env bash

main() {
    local sum=0

    for num in ${@}
    do
        sum=$(( num+sum ))
    done

    echo ${sum}
}

main ${@}

