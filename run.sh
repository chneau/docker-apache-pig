#!/bin/sh

clear
docker run --rm -it --entrypoint pig -v $(pwd):/code:ro chneau/apache-pig -4 log4j.properties -l /dev/null -x local $1