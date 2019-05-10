# Images

An image is a snapshot of your application.

Create image with:

```
docker build -t dojo:latest .
docker build -t <name:tag> -f <dockerfilePath> <contextPath> 
```

Note: `-f <dockerfilePath> ` is optional and defaults to `./Dockerfile` 


List images:

```
docker images
```

Check history of image:

```
docker history dojo:latest
docker history <name:tag>
```

Run an image (create a container):

```
docker run -d --name node-demo -p 80:3000 dojo:latest
docker run -d --name <containerName> -p <hostPort>:<containerPort> <name:tag>
```

Note: `--name <containerName> ` is optional and defaults to a random name on each command iteration

List images:

```
docker rmi images
```

# Containers

A container is an instance of an image

List containers

```
docker ps
docker ps -a (lists also not runninng ones)
```

Container commands:

```
docker container start node-dojo
docker container <command> <containerName>
```

List commands:

```
docker container
```

Enter a container:

```
docker exec -it <container id> /bin/sh
```

# Clean your local docker

```
docker kill $(docker ps -q)
docker rm $(docker ps -a -q)
docker rmi $(docker images -q)
```

* kill all containers
* delete all containers
* delete all images
