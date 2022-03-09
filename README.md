# Dockerfile for Juman++

Dockerfile to use Japanese morphological analyzer [Juman++](https://github.com/ku-nlp/jumanpp)

## Design

Based on the [Alpine](https://hub.docker.com/_/alpine/) Linux image, as recommended in the [documentation](https://docs.docker.com/develop/develop-images/dockerfile_best-practices/).

## Prerequisites

- [Docker](https://docs.docker.com/get-docker/)
	- Make sure you can run commands like `docker images` or `docker ps`.

## Example usage

```
$ docker build -t cromz22/jumanpp:2.0.0-rc3 .
$ docker run -it --rm cromz22/jumanpp:2.0.0-rc3
# jumanpp
```
