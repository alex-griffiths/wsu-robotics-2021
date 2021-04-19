#include <ros/ros.h>
#include <custom_srvs/num_triple.h>
#include <custom_srvs/service_type_1.h>
#include <stdlib.h>
#include <iostream>
#include <vector>

int main(int argc, char **argv)
{
	ros::init(argc, argv, "client_vect_node");
	ros::NodeHandle nh;
	ros::ServiceClient myClient = nh.serviceClient<srv_vect::add_num_vector>("srv_vect_node/add_num_vector");

	srv_vect::add_num_vector::Request req;
	srv_vect::add_num_vector::Response resp;
    
    srv_vect::num_to_add triple;
	
	srand(time(0));

	ros::Rate rate(1);
	while(ros::ok())
	{ 

		req.triple_vect.clear();

		for( int i = 0; i < 10; i++ ) //give the server some random 10 triple of nubmers to add
        {
	    	triple.A = rand()%10; //some random numbers between 1 and 10
            triple.B = rand()%10;
            triple.C = rand()%10;
            req.triple_vect.push_back(triple);            
        }		

		bool success = myClient.call(req, resp);

		if(success)
		{

			for( int i = 0; i < resp.sum_vect.size(); i++ )
			{
				 //resp.sum_vect.push_back(req.triple_vect[i].A + req.triple_vect[i].B + req.triple_vect[i].C);
				 ROS_INFO_STREAM("Server says sum of triples: " << resp.sum_vect[i]);

		         if( i+1 != resp.sum_vect.size() )
				 	ROS_INFO_STREAM(", ");
			}           			            
		}
		else
		{
			ROS_INFO_STREAM("Failed to contact service. ");
		}
	}
}
