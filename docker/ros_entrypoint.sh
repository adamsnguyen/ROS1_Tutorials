#!/bin/bash
set -e

# setup ros environment
echo "source /opt/ros/melodic/setup.bash" >> ~/.bashrc
source "/opt/ros/$ROS_DISTRO/setup.bash"
cd /root/sketchbook/libraries && rosrun rosserial_arduino make_libraries.py .
cd /workfiles/sketchbook/libraries && rosrun rosserial_arduino make_libraries.py .
cd ~
exec "$@"

