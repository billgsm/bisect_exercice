#!/usr/bin/env bash

source math.sh

test_sum() {
    local expected
    local actual

    a=4
    b=3
    c=1
    expected=8

    actual=$(sum ${a} ${b} ${c})

    [[ "${expected}" = "${actual}" ]]
}


test_multiply() {
    local expected
    local actual

    a=2
    b=3
    expected=6

    actual=$(multiply ${a} ${b})

    [[ "${expected}" = "${actual}" ]]
}

test_sum
sum_status=$?
test_multiply
multiply_status=$?

if [[ "0" = "${sum_status}" ]] && [[ "0" = "${multiply_status}" ]]
then
    exit 0
fi

if [[ "0" != "${sum_status}" ]]
then
    >&2 echo 'sum failed'
fi

if [[ "0" != "${multiply_status}" ]]
then
    >&2 echo 'multiply failed'
fi

exit 1

