#!/bin/sh

clear
docker run --rm -it --entrypoint pig -v $(pwd):/code:ro chneau/apache-pig pig -x local $1