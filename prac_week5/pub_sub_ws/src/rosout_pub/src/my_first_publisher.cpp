#include <ros/ros.h>
#include <rosgraph_msgs/Log.h>
#include <stdlib.h>

int main(int argc, char **argv) {
	ros::init(argc, argv, "rosout_msg");
	ros::NodeHandle nh;
	ros::Publisher pub = nh.advertise<rosgraph_msgs::Log>("rosout_agg", 1000);

	srand(time(0));
	
	ros::Rate rate(2);

	while(ros::ok())
	{
		rosgraph_msgs::Log msg;

		msg.msg = "This is a message";

		pub.publish(msg);
		ROS_INFO_STREAM("This is the message: " << msg.msg);
		rate.sleep();
	}

}

