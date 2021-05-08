#!/usr/bin/env bash

# Sums passed integers
# returns the result on the stdout
sum() {
    local sum=1

    for num in ${@}
    do
        sum=$(( num+sum ))
    done

    echo ${sum}
}

multiply() {
    local mulplication=1

    for x in ${@}
    do
        mulplication=$(( x*mulplication ))
    done

    echo ${mulplication}
}

