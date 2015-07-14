#!/bin/bash

RETURN_STATUS=$(curl -I quickstart.cloudera:8000 2>/dev/null | head -n 1 | cut -d$' ' -f2)

if [ $RETURN_STATUS -eq "200" ] 2> /dev/null; then
exit 0;
else
exit 1;
fi
