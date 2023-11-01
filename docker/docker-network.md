# docker network
see [Docker](README.md)

https://docs.docker.com/engine/userguide/networking/dockernetworks/

    $ docker networks ls
    bridge    # where containers live by default
    host
    none

    $ docker network create MYNETWORK  # with bridge driver by default
    :!: containers in different networks can't communicate
    
    $ docker network rm NETWORKNAME
