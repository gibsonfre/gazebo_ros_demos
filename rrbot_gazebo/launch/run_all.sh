rosservice call /rrbot/ros_control/controller_manager/load_controller "name: 'joint1_position_controller'"
rosservice call /rrbot/ros_control/controller_manager/load_controller "name: 'joint2_position_controller'"
rosservice call /rrbot/ros_control/controller_manager/switch_controller "{start_controllers: ['joint1_position_controller','joint2_position_controller'], stop_controllers: [], strictness: 1}" 
#rosservice call /rrbot/ros_control/controller_manager/switch_controller "{start_controllers: ['joint1_position_controller'], stop_controllers: [], strictness: 1}"  &

#rostopic pub /rrbot/ros_control/joint1_position_controller/command std_msgs/Float64 "data: 1.5"
#rostopic pub /rrbot/ros_control/joint2_position_controller/command std_msgs/Float64 "data: 1.0"