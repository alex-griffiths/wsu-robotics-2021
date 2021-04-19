#include <ros/ros.h>
#include <custom_srvs/service_type_1.h>
#include <stdlib.h>
#include <iostream>
#include <vector>

int main(int argc, char **argv)
{
	ros::init(argc, argv, "custom_srvs/service_1");
	ros::NodeHandle nh;
	ros::ServiceServer myServer = nh.advertiseService("custom_srvs/service_1", &add_the_nums_vector);

    ros::spin();

    return 0;

}
