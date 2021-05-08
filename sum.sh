#!/usr/bin/env bash

# Sums passed integers
main() {
    local sum=1

    for num in ${@}
    do
        sum=$(( num+sum ))
    done

    echo ${sum}
}

main ${@}

