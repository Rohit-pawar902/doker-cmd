# Doker-cmd

1).doker ps

2).docker ps -a

3)docker newtwork ls

4)docker newtwork inspect <newtwork name>

5)docker exec -it <container-id>092c5bc1af9f /bin/bash  -: for execting container and do something from inside
  
6)docker images
  
7)docker inspect <images_name>
  
8)docker kill/stop <container_name>
  
9)docker-compose -f <.yml file> -p <networkName> -d(for bacground) -: docker-compose -f nginx-mysql-compose.yml -p moqui up -d
when we run docker-compose auto-matic network created for all .yml container 
  
10)https://gist.github.com/styblope/dc55e0ad2a9848f2cc3307d4819d819f -> for enabling port 23475 for external connection outside network
  
11)https://phoenixnap.com/kb/install-docker-compose-on-ubuntu-20-04  --> uninstall docker
  
11)https://askubuntu.com/questions/935569/how-to-completely-uninstall-docker

12) https://dockerlabs.collabnix.com/docker/cheatsheet/  --> quite usefull

13)docker run -it -e MYSQL_ROOT_PASSWORD=moquiroot ff3b5098b416 ->for startting server and then go inside and start the mysql -u -p done

14)docker logs -f moqui-database<container-name>  --> it shows the log when the container thing run internally what is happning inside and what thing failed.

15)docker rmi <image-id>

16) cat and vim cmd works in docker internal opining of container

17)https://jhooq.com/docker-edit-file-inside-container/
  
18)docker exec -u 0 -it 8662ea2fa000 /bin/bash
docker exec -u 0 -it 8662ea2fa000 /bin/sh

If you do not put the -u 0 flag inside your docker container then you will be logged as appuser and you will not have root privileges and you will not be able to install any new utility inside your docker container.
and then Install any vim,nano editor

19)Networks available -: bridge(private to docker) ,host(public accessable by port) ,overlay(combination of multiple network)
20)Interesting fact by using the container-name you can access the container ip ,if you are in a same network .example :- you have a container which wants to acesss the mysql so you just have to give name-of-mysql-container instead of ip ,it will recongnize you.
  
21)bind-mount - allow your container to connect with local-dir ,and when any changes happen in the local-dir it will auto-reflected in the the container.
  
22)Volumes - shared-volumes(you can connect multiple container to one volm ,adv all container will share the same data) ,dedicated-volumes for configurations can exists here .
  
23)Docker hub is default registry for docker-host ,you can change it or make you own docker-registry by having a container of it and now you can save your images on that.
  
24) docker build -t tag-name .

25)docker -t old/name new/name:tag

26)docker exec -it nginx cat filepath / nginx -s reload

27)/root/.docker -> it will contains the genrated credentials.

28).dockerigone error has to find it is most frustrating in terms of building an dockerfile.

29)docker volume ls

Unlike bind mount, where you can mount any directory from your host, volumes are stored in a single location (most likely /var/lib/docker/volumes/ on unix systems) and greatly facilitates managing data (backup, restore, and migration). Docker volumes can safely be shared between several running containers.
You can also save data to a remote server or in cloud Docker volumes with alternative volume drivers like sshfs.
In addition, Docker enables you to manage volume with the command line docker volume, making their management simple.

Usefull when live project deployed on container so we want to be our data secure and stored in reliable place like cloud.

30)bind-mount
  
31)tmpfs storage -: temprory storage it would remove when life-cycle would expired or attached docker container stopped.   
