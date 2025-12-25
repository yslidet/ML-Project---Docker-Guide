# ML-Project: Docker Guide

## Project Overview
This project is a starter template for quickly setting up Docker.
It’s basically the template I wish I had; something I can copy-paste as a setup whenever I kick off a new project.

The goal is to remove friction at the beginning, so you can focus on building instead of configuring.
If this saves you even a little setup time, then it’s doing its job.

***Why docker?*** 
Think of Docker like working with separate cooking stations.
You can:
* Cook BBQ in one container
* Make soup in another
* Switch between them without cleaning up, reinstalling tools, or breaking anything

Each container keeps its own ingredients and tools, so nothing leaks or conflicts. That means your project runs the same way everywhere — on your machine, a teammate’s machine, or a server.

**In short**: Docker lets you run software anywhere without worrying about setup or “it works on my machine” problems.

### Features 
* Plug-and-play setup: you can copy and paste into any new project.
* Fast project bootstrapping: build your environment and start coding right away.
* Reusable template: for consistent, repeatable Docker setups.


## Setup 
Copy the   `setup/` folder to your project

### Docker Installation
Build a docker image to install dependencies

```bash
cd setup 

docker build \
   -t project:v1 \
   -f dockerfile \
   .
```
### Create Docker Container from Image 
Docker container is the environment you are going work in. 

| Do modify `volumes:` in  `setup/compose_docker.yml` to attach your current working directory and datasets. 

Create/Remove the container
```bash
# mac command
# start
docker-compose -f setup/compose_docker.yml up -d

# do your thing -> `Running Script` 

# stop (when you are done with this container)
docker-compose -f setup/compose_docker.yml down
```


### Running Script 
Get in docker container 
```bash
docker exec -it my_project bash
```

Run your script
```bash
python script.py
```


## Contributors
* **Lidet** - [lidetys](https://github.com/yslidet)

## Acknowledgments
I compile this through practices and lesson learnt from youtube videos. I would like to give the acknowledgement to those projects I have partake and these following videos: 
* https://youtube.com/playlist?list=PLZsOBAyNTZwazmH7F9pAE_fFsKmrqYqq5&si=pDDccxG9ESJ_z2gQ