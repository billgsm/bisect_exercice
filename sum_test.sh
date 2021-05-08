#!/usr/bin/env bash

expected=8

a=4
b=3
c=1

actual=$(bash sum.sh ${a} ${b} ${c})

[[ "${expected}" = "${actual}" ]]
