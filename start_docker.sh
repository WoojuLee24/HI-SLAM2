#!/bin/bash
xhost +local:root
docker run -ti --rm --gpus all --shm-size 32g --net=host --env="DISPLAY" --volume="$HOME/.Xauthority:/root/.Xauthority:rw"  -v $(pwd):/ws/external -v /media/TrainDataset:/ws/data dnwn24/hislam2:2.2.2-cuda11.8-cudnn8-devel /bin/bash
