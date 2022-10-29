docker build --squash \
    --network host \
    --build-arg https_proxy=$https_proxy --build-arg http_proxy=$http_proxy --build-arg all_proxy=$all_proxy \
    -t nvidia-noetic -f docker_base
