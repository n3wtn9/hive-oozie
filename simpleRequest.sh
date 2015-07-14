#!/bin/bash

# simple rest call
# has one parameter -> the server:port to call

RETURN_STATUS=$(curl -I $1 2>/dev/null | head -n 1 | cut -d$' ' -f2)

if [ $RETURN_STATUS -eq "200" ] 2> /dev/null; then
exit 0;
else
exit 1;
fi
