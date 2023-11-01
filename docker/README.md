# Docker

* https://docker-curriculum.com/
* https://docs.docker.com/get-started
* course https://www.udemy.com/course/learn-docker/
* https://www.smarthomebeginner.com/best-docker-containers-for-home-server/
* https://www.smarthomebeginner.com/docker-media-server-2022/

## Images
    $ docker search postgres
    $ docker pull postgres
    $ docker images

## Volumes
    $ docker volume create postgres-data
    $ docker volume ls

## Start a container
    $ docker run postgres                       # run an image and exit
    $ docker run postgres echo "Hello, world!"  # run an image and the command in it and exit
    $ docker run -it postgres sh                # run an image with the shell and attach to it

    $ docker run \
        --name p1 \
        -e POSTGRES_PASSWORD=lovesexgod               # set environment variable \
        -P                                            # publish all opened ports random \
        -p 5432:5432                                  # publish a specific port ext:int \
        -v postgres-data:/var/lib/postgresql/data     # mount a volume ext:int \
        --net MYNETWORK                               # put in the specific network \
        -d                                            # detached mode \
        -it                                           # interactive terminal \
        --rm                                          # rm container after stop \
        postgres                                      # which image to run. If an image is not pulled, it will be pulled automatically 

    $ docker stack deploy -c stack.yml postgres

## Dockerfile
Dockerfile is the list of instructions to build an image

    # define the parent image, to be inherited
    FROM python:3.8
    MAINTAINER Name Surname <email@email.de>
    # mount a volume
    ADD flask-app /opt/flask-app
    WORKDIR /usr/src/app
    # copy all the files to the container
    COPY . .
    # install dependencies
    RUN pip install --no-cache-dir -r requirements.txt
    EXPOSE 5000
    CMD ["python", "./app.py"]

    $ docker build -t USERNAME/IMAGENAME IMAGEROOTDIR    # Dockerfile must be in IMAGEROOTDIR

## Distributing containers
    $ git clone https://github.com/prakhar1989/FoodTrucks
    $ cd FoodTrucks
    $ ./setup-docker.sh
  
setup-docker.sh:

    #!/bin/bash

    # build the flask container
    docker build -t yourusername/foodtrucks-web .
    
    # create the network
    docker network create foodtrucks-net
    
    # start the ES container
    docker run -d --name es --net foodtrucks-net -p 9200:9200 -p 9300:9300 -e "discovery.type=single-node" docker.elastic.co/elasticsearch/elasticsearch:6.3.2
    
    # start the flask app container
    docker run -d --net foodtrucks-net -p 5000:5000 --name foodtrucks-web yourusername/foodtrucks-web
    Now imagine you are distributing your app to a friend, or running on a server that has docker installed. You can get a whole app running with just one command!





## Docker Compose
see [Docker Compose](docker-compose.md)

## Work with containers
    $ docker ps           # running containers only === $ docker container ls
    $ docker ps -a        # all available containers
    $ docker port p1      # see exposed ports

    $ docker exec -it p1 psql -U postgres
    $ docker exec -it p1 psql -U postgres -c "create database scores"

    $ docker logs p1

## Networks
see [docker-network](docker-network.md)

## Clean up
    $ docker stop p1
    $ docker rm p1
    $ docker container prune            # rm all stopped containers
    $ docker rmi postgres
    $ docker volume rm postgres-data
    $ docker network rm NETWORKNAME
