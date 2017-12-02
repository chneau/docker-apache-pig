#!/bin/sh

clear
docker run --rm -it --entrypoint='pig' -v $(pwd):/code:ro tinchou/apache-pig -x local $1