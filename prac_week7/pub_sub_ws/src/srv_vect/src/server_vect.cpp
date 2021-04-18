#include <ros/ros.h>
#include <srv_vect/add_num_vector.h>
#include <stdlib.h>
#include <iostream>
#include <vector>

bool add_the_nums_vector(srv_vect::add_num_vector::Request &req,
                        srv_vect::add_num_vector::Response &resp)
{	
    for( int i = 0; i < req.triple_vect.size(); i++ )
    {
         resp.sum_vect.push_back(req.triple_vect[i].A + req.triple_vect[i].B + req.triple_vect[i].C);
         ROS_INFO_STREAM("Sum = " << req.triple_vect[i].A <<" + " << req.triple_vect[i].B <<" + " << req.triple_vect[i].C <<" = " << resp.sum_vect.back() <<"\n");
    }

	return true;
}

int main(int argc, char **argv)
{
	ros::init(argc, argv, "srv_vect_node");
	ros::NodeHandle nh;
	ros::ServiceServer myServer = nh.advertiseService("srv_vect_node/add_num_vector", &add_the_nums_vector);

    ros::spin();

    return 0;

}
