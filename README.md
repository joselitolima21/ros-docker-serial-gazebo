# Ros + Gazebo + Docker

## Preparação do ambiente
Criar imagem:
   
    docker build -t ros-kinetic-gazebo7 .

Executar o container:

    ./launch.sh

Rodar outro terminal no container:

    ./outher.sh

## Executando
Roscore:

    roscore

Gazebo:

    roslaunch rrbot_gazebo rrbot_world.launch

ROS Control:

    roslaunch rrbot_control rrbot_control.launch

ROS serial:

    rosrun rosserial_python serial_node.py tcp

Example of Moving Joints:

    rostopic pub /rrbot/joint2_position_controller/command std_msgs/Float64 "data: -0.1"
