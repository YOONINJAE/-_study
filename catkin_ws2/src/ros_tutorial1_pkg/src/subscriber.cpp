#include "ros/ros.h"
#include "std_msgs/String.h"
#include "ros_tutorial_msg/msgData.h"

void tutorialCallback(const ros_tutorial_msg::msgData::ConstPtr& msg){

    ROS_INFO("I herad2: [%d]", msg->data);


}

void chatterCallback(const std_msgs::String::ConstPtr& msg)
{
    ROS_INFO("I heard: [%s]", msg->data.c_str());
}

int main(int argc, char **argv)
{
    ros::init(argc, argv, "subscriber");
    ros::NodeHandle nh;

    //chatter라는 이름의 message를 받았을때 cb 함수 지정!!@!@!@!@!
    ros::Subscriber sub = nh.subscribe("chatter", 1000, chatterCallback);
    ros::Subscriber sub2 = nh.subscribe("tutorial_msg", 1000, tutorialCallback);
    //이놈이 있어야 메시지를 받을때 까지 기다리는겨~ spinonce는 publishing과 sub을 동시에 할때 사용한대다ｒ
    ros::spin();

    return 0;
}
