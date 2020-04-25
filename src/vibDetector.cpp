#include <sensor_msgs/Imu.h>
#include <ros/ros.h>
#include <bits/stdc++.h>
#include <tf/transform_datatypes.h>
using namespace std;

void cbcb(const sensor_msgs::Imu& imu){
    tf::Quaternion quat(imu.orientation.x,imu.orientation.y,imu.orientation.z,imu.orientation.w);
    double r;
	double p;
	double y;
    tf::Matrix3x3(quat).getRPY(r,p,y);
    r = r*180.0/3.14159;p = p*180.0/3.14159;y = y*180.0/3.14159;
    ROS_INFO("R=%lf,P=%lf,Y=%lf.\n",r,p,y);
}

int main(int argc,char** argv){
    ros::init(argc,argv, "vibDetector");
    ros::NodeHandle nh;
    ros::Subscriber sub = nh.subscribe("/imu",1000,cbcb);
    ROS_INFO("vibDetector started");
	ros::spin();
    return 0;
}
