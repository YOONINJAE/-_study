#include "ros/ros.h"
#include "std_msgs/String.h"
#include "ros_tutorial_msg/msgData.h"
int main(int argc, char **argv)
{
    ros::init(argc, argv, "publisher");
    ros::NodeHandle nh;

    ros::Publisher chatter_pub = nh.advertise<std_msgs::String>("chatter", 1000);
    ros::Publisher tutorial_pub = nh.advertise<ros_tutorial_msg:: msgData>("tutorial_msg", 1000);

    int cnt = 0;

    ros::Rate loop_rate(10); //10hz로 이걸 돌리겠따ｒ
    while (ros::ok())
    {
        std_msgs::String msg;
        msg.data = "hello world";
//뭐 보내고싶은데 확인하고싶어서 ROS_INFO
        ROS_INFO("Send : %s", msg.data.c_str());

        ros_tutorial_msg::msgData msg2;
        msg2.data = cnt++;
        ROS_INFO("Send : %d", msg2.data);


        chatter_pub.publish(msg);
        tutorial_pub.publish(msg2);


        ros::spinOnce();

        loop_rate.sleep();
    }

    return 0;
}
