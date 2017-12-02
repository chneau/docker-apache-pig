#!/bin/sh

clear
docker run --rm -it --entrypoint pig -v $(pwd):/code:ro test -4 log4j.properties -l /dev/null -x local $1