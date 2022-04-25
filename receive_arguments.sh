#!/bin/bash

arguments() {
    echo "Hello $1"
}

if [ -z "$1" ]; then
    echo "Run the command with your name silly!"
else
    name=$1
    arguments ${name^}
fi
