# docker-apache-pig

Joke Docker image that translates text into Pig Latin using Apache Pig.

## Usage

```bash
docker build -t chneau/apache-pig .
./run.sh
```

`run.sh` mounts `code/` read-only and runs the Pig script with `-x local`. Pig is installed inside the image, so only Docker is required on the host.

## License

MIT
