#!/bin/sh

# Deploy Turtlebot in personal environment
xterm -e "roslaunch turtlebot_gazebo turtlebot_world.launch world_file:=$HOME/catkin_ws/src/World/personal.world" &
sleep 5

# Run slam_gmapping to perfrom SLAM
xterm -e "rosrun gmapping slam_gmapping" &
sleep 5

# view_navigation to observe the map in rviz
xterm -e "roslaunch turtlebot_rviz_launchers view_navigation.launch" &
sleep 5

# keyboard_teleop to manually control the robot with keyboard commands
xterm -e "roslaunch turtlebot_teleop keyboard_teleop.launch"