# Dockerfile

* https://docs.docker.com/develop/develop-images/instructions/

## FROM
    FROM ubuntu:22.04
    FROM alpine

## ARG
    ARG DOTNET_VERSION=8.0.0-preview.6.23329.7

## LABEL - just tags
    LABEL vendor1="ACME Incorporated"
    LABEL vendor2=ZENITH\ Incorporated
    LABEL com.example.release-date="2015-02-12"

## RUN - configuration commands
    RUN

☝️ Combine update and install in one command:

    RUN apt-get update && apt-get install -y \
        curl \
        nginx \
        && rm -rf /var/lib/apt/lists/*

## ADD
    ADD

## COPY
    COPY --from=installer /dotnet /usr/share/dotnet


## [CMD](https://docs.docker.com/reference/dockerfile/#cmd) - execute a statement by container's start
    CMD
⚠️ only the last CMD counts

## [EXPOSE](https://docs.docker.com/reference/dockerfile/#expose) - open ports
    EXPOSE 80

## [ENV](https://docs.docker.com/reference/dockerfile/#env) - environment variables 
    ENV MY_NAME="John Doe"
    ENV MY_DOG=Rex\ The\ Dog
    ENV MY_CAT=fluffy
