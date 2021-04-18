#include <ros/ros.h>
#include <custom_msg_vect/num_to_add.h>
#include <custom_msg_vect/num_to_add_vector.h>
#include <stdlib.h>
#include <iostream>
#include <vector>

void poseMsgReceived(const custom_msg_vect::num_to_add_vector& msg)
{
	//ROS_INFO_STREAM( "" <<"position=(" << msg.x <<"," << msg.y <<")" <<" direction=" << msg.theta );
    ROS_INFO_STREAM("I HEARD the following triples: ");        
    for( int i = 0; i < msg.triple_vect.size(); i++ )
    {
         ROS_INFO_STREAM("(" << msg.triple_vect[i].A <<"," << msg.triple_vect[i].B <<"," << msg.triple_vect[i].C <<")");

         if( i+1 != msg.triple_vect.size() )
	     	ROS_INFO_STREAM(", ");
    }
    ROS_INFO_STREAM("\n");     
}

int main(int argc, char **argv)
{
	ros::init(argc, argv, "cust_msg_vect_sub_node");

	ros::NodeHandle nh;

	ros::Subscriber sub = nh.subscribe("cust_msg_vect_pub_node/out", 1000, &poseMsgReceived);

	ros::spin();
}
