#include <ros/ros.h>
#include <cust_msg_pub/my_first_cust_msg.h>
#include <iomanip>

void poseMsgReceived(const cust_msg_pub::my_first_cust_msg &msg) {
	int total = msg.A + msg.B + msg.C;

	ROS_INFO_STREAM("" << "Total: " << total);
}

int main(int argc, char **argv) {
	ros::init(argc, argv, "subscriber");
	ros::NodeHandle nh;
	ros::Subscriber sub = nh.subscribe("cust_msg_pub_node/out", 1000, &poseMsgReceived);

	ros::spin();
}
