#!/bin/bash

test $(echo '13.5>22'|bc -l) -gt 0
echo $?