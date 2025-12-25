## Building Docker from Scratch -> docker image
docker build \
   -t project:v1 \
   -f dockerfile \
   .

## `docker images` - to display the image has just been built above (e.g. bird:latest)

## Run Docker Container 
## `--shm-size` check PC avail memory (max capacity) at `df -h /dev/shm` (note: 8G is not enough for big video gallery)
## `--rm` use when running on the server to clean up (remove) the docker docker container after exit. 
## `-u $(id -u):$(id -g)` to give permission to run 

# docker run \
#         --gpus all \
#         -it \
#         -v /Users/yslidet/Documents/AY2324S2-GAN-Hao-Yi-main:/home/project_bird \
#         --shm-size 8G \
#         --name lidet_project_bird \
#         projec_bird:v1

## PC without GPU
# docker run \
#         -it \
#         -v /Users/yslidet/Documents/DownloadYoutube:/home/DownloadYoutube \
#         --shm-size 8G \
#         --name lidet_youtube_download \
#         youtube_download:v1

## exit and re-run by
# docker start lidet_project_bird 
# docker exec -it lidet_project_bird bash 

## stop and delete docker container 
# docker stop lidet_project_bird 
# docker rm lidet_project_bird 

## remove docker image 
# docker rmi bird