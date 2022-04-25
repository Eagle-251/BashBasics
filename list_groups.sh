#!/bin/bash

listGroups() {
    for i in $(groups); do
        echo "${USER^} is part of the group:  $i"
    done
}

listGroups
