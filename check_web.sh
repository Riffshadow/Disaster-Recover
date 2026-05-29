#!/bin/bash

curl -s http://localhost > /dev/null
if [ $? -ne 0 ]; then
  exit 1
fi

if [ ! -f /var/www/html/index.html ]; then
  exit 1
fi

exit 0
