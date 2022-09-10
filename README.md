# Doker-cmd

1).doker ps

2).docker ps -a

3)docker newtwork ls

4)docker newtwork inspect <newtwork name>

5) docker exec -it <container-id>092c5bc1af9f /bin/bash  -: for execting container and do something from inside
  
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

