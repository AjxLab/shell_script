#!/bin/bash

required_packages="git openssl autoconf automake"
install_packages=""
installed_packages=$(brew list)

for package in ${required_packages}; do
    echo -n "check ${package}..."
    if echo "${installed_packages}" | grep -xq ${package}; then
        echo "OK."
    else
        echo "Not installed."
        install_packages="${install_packages} ${package}"
    fi
done

echo ${install_packages}
