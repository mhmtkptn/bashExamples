#!/bin/bash
# test the return code from the previous process

function assertEqual() {
    if [ ! $1 = $2 ]; then
        printf "failed: $1 != $2\n"
        exit 1
    fi
}

function echoExitStatus() {
    ls "/bin/bash" &>/dev/null 
    assertEqual 0 $?
}


function runAll() {
    echoExitStatus
}


runAll
