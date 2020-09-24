#!/bin/bash

LONGITUD=12

genpasswd() { 
    local l=$1
    [ -z "$l" ] && l=$LONGITUD
    tr -dc !-.A-Za-z0-9 < /dev/urandom | tr -d '$' | tr -d "'" | tr -d '"' | head -c ${l} | xargs 
}



genpasswd $1

