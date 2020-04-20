xhost +local:root

sudo docker run -it \
--env="DISPLAY"  \
--env="QT_X11_NO_MITSHM=1"  \
--volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
--workdir="" \
-p 11411:11411/tcp \
--name "ros" \
ros-kinetic-gazebo7

xhost -local:root