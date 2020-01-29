#!/bin/bash

if [ -f is_file_exist.sh ]; then
    echo "ファイルは存在する"
fi

is_clone=false
if [ -f is_file_exist.sh ] && ! "${is_clone}"; then
    echo "ファイルは存在する"
fi
