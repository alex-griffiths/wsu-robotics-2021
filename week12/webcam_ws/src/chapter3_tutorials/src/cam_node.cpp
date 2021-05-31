#include <ros/ros.h>
#include <image_transport/image_transport.h>

sensor_msgs::ImageConstPtr sensor_msg;

void callback(const sensor_msgs::ImageConstPtr &msg)
{
	ROS_INFO("Here is the sensor message\r\n");
	sensor_msg = msg;
}

int main(int argc, char **argv)
{
	ros::init(argc, argv, "cam_node");
	ros::NodeHandle nh;

	image_transport::ImageTransport it(nh);
	image_transport::Subscriber sub = it.subscribe("camera", 1, callback);
	image_transport::Publisher pub = it.advertise("my_new_camera_topic", 1);

	ros::Rate loop_rate(5);

	while(nh.ok())
	{
		pub.publish(sensor_msg);
		ros::spinOnce();
		loop_rate.sleep();
	}

	return 0;
}
