cmake_minimum_required(VERSION 3.0.2)
project(ros_tutorial1_pkg)

## Compile as C++11, supported in ROS Kinetic and newer
# add_compile_options(-std=c++11)

## Find catkin macros and libraries
## if COMPONENTS list like find_package(catkin REQUIRED COMPONENTS xyz)
## is used, also find other catkin packages
find_package(catkin REQUIRED COMPONENTS
  roscpp
  std_msgs
  ros_tutorial_msg
)



catkin_package(
#  INCLUDE_DIRS include
#  LIBRARIES ros_tutorial1_pkg
#  CATKIN_DEPENDS roscpp std_msgs
#  DEPENDS system_lib
)

include_directories(
# include
  ${catkin_INCLUDE_DIRS}
)

#너 내가 추가해서 사용할 놈들이야 !!!!
add_executable(ros_tutorial1_publisher src/publisher.cpp)
add_executable(ros_tutorial1_subscriber src/subscriber.cpp)

#타겟링크 노드 수대로 추가해줘야대!!!!!!!!!1
 target_link_libraries(ros_tutorial1_subscriber
  ${catkin_LIBRARIES}
 )
target_link_libraries(ros_tutorial1_publisher
 ${catkin_LIBRARIES}
)
