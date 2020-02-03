#!/bin/sh

if [[ $(brew list) == *openssl* ]]; then
    echo FOUND!!!
fi
