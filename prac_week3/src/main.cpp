#include <ros/ros.h>

int main() {
	ros::init(argc, argv, "turtle_crazy");
	ros::NodeHandle nh;

	while (int i = 0 < 7) {
		system("rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '{linear: {x: 1.1, y: 0.0, z: 0.0}, angular: {x: 0.0, y: 0.0, z: 1.0}}'");
		i++;
	}
	return 0;
}
