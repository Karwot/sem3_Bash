#!/bin/bash

if [ $(echo '13.5>22'| bc -l) -gt 0 ] || [ $(echo '13.5<15'| bc -l) -gt 0 ]
then
echo "true"
else
echo "false"
fi