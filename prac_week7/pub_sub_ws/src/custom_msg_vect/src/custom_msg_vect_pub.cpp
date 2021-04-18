#include <ros/ros.h>
#include <custom_msg_vect/num_to_add.h>
#include <custom_msg_vect/num_to_add_vector.h>
#include <stdlib.h>
#include <iostream>
#include <vector>

int main(int argc, char **argv)
{
	ros::init(argc, argv, "cust_msg_vect_pub_node");
	ros::NodeHandle nh;
	ros::Publisher pub = nh.advertise<custom_msg_vect::num_to_add_vector>("cust_msg_vect_pub_node/out", 1000);

	srand(time(0));

    custom_msg_vect::num_to_add_vector my_test_vector;
	custom_msg_vect::num_to_add triple;

	ros::Rate rate(1);
	while(ros::ok())
	{        		
		my_test_vector.triple_vect.clear();

		for( int i = 0; i < 5; i++ )
        {
	    	triple.A = rand()%10; //some random numbers between 1 and 10
            triple.B = rand()%10;
            triple.C = rand()%10;
            my_test_vector.triple_vect.push_back(triple);            
        }

        pub.publish(my_test_vector);

        ROS_INFO_STREAM("Published the following triples: ");        
        for( int i = 0; i < my_test_vector.triple_vect.size(); i++ )
        {
             ROS_INFO_STREAM("(" << my_test_vector.triple_vect[i].A <<"," << my_test_vector.triple_vect[i].B <<"," << my_test_vector.triple_vect[i].C <<")");

             if( i+1 != my_test_vector.triple_vect.size() )
		     	ROS_INFO_STREAM(", ");
        }
        ROS_INFO_STREAM("\n");
                 		
		rate.sleep();
	}
}
