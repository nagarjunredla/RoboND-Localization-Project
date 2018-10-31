#!/bin/sh
xterm  -e "cd $(pwd)/../..; source devel/setup.bash ; roslaunch udacity_bot udacity_world.launch " &
sleep 15
xterm  -e "cd $(pwd)/../..; source devel/setup.bash ; roslaunch udacity_bot amcl.launch " &
sleep 5
xterm -e "cd $(pwd)/../..; source devel/setup.bash ; rosrun udacity_bot navigation_goal  " &
