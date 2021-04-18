#include <ros/ros.h>
#include <rosgraph_msgs/Log.h>
#include <iomanip>

void poseMsgReceived(const rosgraph_msgs::Log &msg) {
	ROS_INFO_STREAM("" << "Arriving message: " << msg.msg);
}

int main(int argc, char **argv) {
	ros::init(argc, argv, "listener");

	ros::NodeHandle nh;

	ros::Subscriber sub = nh.subscribe("rosout_agg", 1000, poseMsgReceived);

	ros::spin();
}
