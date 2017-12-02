FROM java:7-jre-alpine

ENV PIG_VERSION 0.17.0
RUN apk add --no-cache curl
RUN curl http://apache.cs.utah.edu/pig/pig-$PIG_VERSION/pig-$PIG_VERSION.tar.gz \
    | tar xzf -

ENV PATH $PATH:/pig-$PIG_VERSION/bin

WORKDIR /code

ENTRYPOINT pig