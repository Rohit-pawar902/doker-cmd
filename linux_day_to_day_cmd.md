### Good to Know while interacting with ubuntu/Linux
#### Why to run `sudo apt update` every time ?

Updating the package lists with apt update ensures that you're installing the latest version of jq available in the repositories configured on your system. Even though you might have run apt update a month ago, new versions of packages could have been released since then.
However, if you're confident that the package lists are up-to-date and you're okay with potentially not getting the latest version of jq, you can skip the apt update step. In many cases, it's good practice to ensure your package lists are current to avoid potential issues with outdated package information.

### Basic Linux day-to-day cmds

1. netstat -ltnp | grep -w ':80'  --> for checking ports
2. scp -rv rohit.pawar@172.20.20.8:/home/rohit.pawar/rohit ./  ---> server copying things
3. cp -rv source destination
4. mv -rv source destination
5. rm -rv place*    -- >  for removing and * for all files with particular prefix will be removed
6. apt-get install
7. apt-get update
8. sudo su

9. tar -czvf file.tar.gz directory
--------------------------One can extract files in a given directory such as /tmp/:-----------------------------------
10. tar -xzvf projects.tar.gz -C /tmp/
https://www.cyberciti.biz/faq/how-to-create-tar-gz-file-in-linux-using-command-line/

11. diff filename > finame2
12. nano
13. vi
14. touch
15. mkdir
16. telnet
17. sudo fuser -k 9443/tcp  : for Killing the particular process and freeing up it.
18. Ctrl + r multiple time on the terminal for : It is used for searching in the terminal for already run cmd
19. ssh user@ip : tunneling, reverse-tunneling .
20. wget link(which directly downloads file/zip so this thing automatically installs it local).
21. ps aux | grep java : It is used view all process and then grep will filter out the process which is involving java
22. ps aux
23. tail -F ../file.name
24. move
25. nslookup
26. ls -all
