# Docker Compose
see [Docker](README.md)

https://docs.docker.com/compose/overview  
https://docs.docker.com/compose/compose-file  

## build images

    $ docker-compose build


## run

step by step:

    $ cd dir_with_docker-compose_yml
    $ docker compose up

oneliner:

    $ docker compose 
        [ -f docker-compose.yml ]    # YAML file location if not in PWD
        -d                           # detached mode
        up 

## clean up
    $ docker compose down \
        -v                     # for verbose output
