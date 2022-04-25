#!/bin/bash

greeting () {
    if [ -z "$1" ]; then
        echo -e "Hello!\nWhat is your name?"
        read NAME
        echo "Well Hello there $NAME"
        exit
    else
        echo "Hello $1"
    fi
}


greeting $1