#!/usr/bin/env bash

# create a descent-sized text file (most likely for testing purpose)

sutOut="/tmp/_"

function create() {
    dd if=/dev/zero of=${sutOut} bs=1K count=1K
    ls -l ${sutOut}
}

create
