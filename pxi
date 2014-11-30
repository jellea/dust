#!/bin/bash

base_path=`dirname $0`
pixie_path="$base_path/pixie-vm"

case $1 in
    "")
        rlwrap -a -n $pixie_path
        ;;
    *)
        $pixie_path $base_path/run.pxi $1
        ;;
esac