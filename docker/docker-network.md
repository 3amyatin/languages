# docker network
see [Docker](README.md)

https://docs.docker.com/engine/userguide/networking/dockernetworks/  

Linux create docker network interface **docker0**  
macOS and in Win hides docker in a VM behind the NAT


    $ docker networks ls
    bridge
    host
    none
    macvlan
    ipvlan
    overlay  # docker swarm


## bridge
* an internal network  
* by default  
* the default bridge has no dns
* multiple *bridge* networks are possible
* manually created bridge networks becomes dns support  
* :star: containers communicate within a bridge network  
* :warning: containers in different networks can't communicate
 
  
      $ docker network create [--drive bridge] MYNET
      $ docker network create --subnet 192.168.10.0/24 --gateway 192.168.0.1 myCustomNet192
      $ docker run --rm -it --name container1 --net MYNET -d nicolaka/netshoot
      $ docker run --rm -it --name container2 --net MYNET nicolaka/netshoot /bin/bash
        container2# ping container1

      $ docker network connect MYNET2 container2  # one container can be connected to multiple networks (eg. proxy)
      $ docker network disconnect container2
  
        
## host
* fixed ip address
* with communication between containers
* only one *host* network is allowed

      $ docker network create --drive host MYNETWORK
      $ docker run nginx --network=host


## none
* no ip address
* no communication between containers
* only one *none* network is allowed

      $ docker run nginx --network=none

## macvlan
* own physical mac-address for each container

## ipvlan
* own physical ip-address for each container




## clean up
    $ docker network rm NAME|ID
