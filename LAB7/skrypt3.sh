#!/bin/bash

file=/var/log/messages
echo 0 - prawda, 1 - falsz
test -d $file 
echo czy istnieje: $?

test -s $file
echo czy jest pusty: $?

ls -l $file