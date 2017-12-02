#!/bin/sh
docker run --rm -it --entrypoint pig -v $(pwd)/code:/code:ro chneau/apache-pig -4 log4j.properties -l /dev/null -x local