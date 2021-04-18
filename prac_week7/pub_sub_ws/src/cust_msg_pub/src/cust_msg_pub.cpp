#include <ros/ros.h>
#include <cust_msg_pub/my_first_cust_msg.h>
#include <stdlib.h>

int main(int argc, char **argv) {
	ros::init(argc, argv, "cust_msg_pub_node");
	ros::NodeHandle nh;
	ros::Publisher pub = nh.advertise<cust_msg_pub::my_first_cust_msg>("cust_msg_pub_node/out", 1000);

	srand(time(0));

	ros::Rate rate(1);
	while(ros::ok()) {
		cust_msg_pub::my_first_cust_msg msg;

		msg.A = 1;
		msg.B = 2;
		msg.C = 3;
		pub.publish(msg);

		ROS_INFO_STREAM("This is the message: " << msg.A << " " << msg.B << " " << msg.C << "\n");

		rate.sleep();
	}
}
