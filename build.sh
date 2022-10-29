if [ $# -gt 0 ]
then
    file=$1
    target="ros_$1"
else
    file="docker_base"
    target="nvidia-noetic"
fi

docker build --squash \
    --network host \
    --build-arg https_proxy=$https_proxy --build-arg http_proxy=$http_proxy --build-arg all_proxy=$all_proxy \
    -t $target -f $file .
