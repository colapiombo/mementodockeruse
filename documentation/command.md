### List Docker CLI commands

##### Display Docker version and info

```console
dev@ubuntu:~$ docker version
```
```console
dev@ubuntu:~$ docker info
```

##### Execute Docker image
```console
dev@ubuntu:~$ docker run [NAMEIMAGE]
```

##### List Docker images
```console
dev@ubuntu:~$ docker image ls
```

##### List Docker containers (running, all, all in quiet mode)
```console
dev@ubuntu:~$ docker container ls
```
```console
dev@ubuntu:~$ docker container ls --all
```
```console
dev@ubuntu:~$ docker container ls -aq
```

##### Removing All Unused Objects
The docker system prune command will remove all stopped containers,all dangling images, and all unused networks:
```console
dev@ubuntu:~$ docker system prune
```
You’ll be prompted to continue, use the -f or --force flag to bypass the prompt.
```console
dev@ubuntu:~$ docker system prune -f
```

#### Search docker image 
```console
dev@ubuntu:~$ docker search php
```

