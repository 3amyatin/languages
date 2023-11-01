# Docker
* https://docker-curriculum.com/
* https://docs.docker.com/get-started
* course https://www.udemy.com/course/learn-docker/
* 
* https://www.smarthomebeginner.com/best-docker-containers-for-home-server/
* https://www.smarthomebeginner.com/docker-media-server-2022/

## Images
    $ docker pull postgres
    $ docker images

## Volumes
    $ docker volume create postgres-data
    $ docker volume ls

## Start a container
    $ docker run postgres                       # run an image and exit
    $ docker run postgres echo "Hello, world!"  # run an image and the command in it and exit
    $ docker run -it postgres sh                # run an image with the shell and attach to it

    $ docker run --name p1 \
      -e POSTGRES_PASSWORD=lovesexgod \
      -p 5432:5432 \
      -v postgres-data:/var/lib/postgresql/data \
      -d postgres

## Work with containers
    $ docker ps           # running containers only
    $ docker ps -a        # all available containers
        
    $ docker exec -it p1 psql -U postgres
    $ docker exec -it p1 psql -U postgres -c "create database scores"

    $ docker logs p1



# clean up
    $ docker stop p1
    $ docker rm p1
    $ docker container prune            # rm all stopped containers
    $ docker rmi postgres
    $ docker volume rm postgres-data
