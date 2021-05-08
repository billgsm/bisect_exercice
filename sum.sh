#!/usr/bin/env bash

# Sums passed integers
# returns the result on the stdout
main() {
    local sum=1

    for num in ${@}
    do
        sum=$(( num+sum ))
    done

    echo ${sum}
}

main ${@}

