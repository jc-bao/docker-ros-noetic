docker run -it --net=host --gpus all \
    --env="NVIDIA_DRIVER_CAPABILITIES=all" \
    --env="DISPLAY" \
    --env="QT_X11_NO_MITSHM=1" \
    --env="http_proxy=$http_proxy" \
    --env="https_proxy=$https_proxy" \
    --env="all_proxy=$all_proxy" \
    --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
    --volume="${PWD}/ws_moveit:/ws_moveit" \
    ros_docker_moveit \
    zsh
