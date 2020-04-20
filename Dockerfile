FROM osrf/ros:kinetic-desktop-full

# Instalando o gazebo
RUN apt-get update && apt-get install --no-install-recommends -y \
    ros-kinetic-gazebo-* \
    ros-kinetic-gazebo-ros-control \
    ros-kinetic-joint-state-controller \
    ros-kinetic-effort-controllers \
    ros-kinetic-position-controllers \
    ros-kinetic-rosserial-arduino \
    ros-kinetic-rosserial \
  && rm -rf /var/lib/apt/lists/*

RUN mkdir -p ./ws_ros/src

COPY . ./ws_ros/src

RUN /bin/bash -c " source /opt/ros/kinetic/setup.bash && \
                  cd ./ws_ros/ && \
                  catkin_make && \
                  echo 'source ./ws_ros/devel/setup.bash' >> ~/.bashrc"

EXPOSE 11411/tcp
