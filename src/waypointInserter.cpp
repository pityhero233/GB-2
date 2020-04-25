//
// Created by pityhero on 2019/12/14.
//

//TODO:store POI jit.
#include<ros/ros.h>
#include<cmath>
#include<vector>
#include<cstdlib>
#include<string>
#include <std_msgs/String.h>
#include<geometry_msgs/PoseStamped.h>
#include<nav_msgs/Path.h>
#include"gbrobot/reset.h"
#include"gbrobot/deskInserter.h"
#include"gbrobot/navigate.h"
#include "gbrobot/debug.h"
#include"rviz_visual_tools/rviz_visual_tools.h"
#include <geometry_msgs/Vector3.h>
#include <geometry_msgs/Quaternion.h>
#include<tf/transform_datatypes.h>
#include"gbrobot/waypointInserter.h"
const int DESKMAX=100;
const std::string audioPrefix = "mplayer /home/pityhero/catkin_ws/src/gbrobot/audios/";
geometry_msgs::Pose defpos;
geometry_msgs::Pose currentPos;
geometry_msgs::PoseArray POIs;
geometry_msgs::PoseArray deskPOIs;
rviz_visual_tools::RvizVisualTools* vis=NULL;
ros::Publisher comm;

inline bool cmpPose(const geometry_msgs::Pose& a,const geometry_msgs::Pose& b){
    return a.orientation.x == b.orientation.x && a.orientation.y == b.orientation.y &&
           a.orientation.z == b.orientation.z && a.position.x == b.position.x && a.position.y == b.position.y &&
           a.position.z == b.position.z;
}


void indicatePos(const geometry_msgs::Point& pos,const rviz_visual_tools::colors color=rviz_visual_tools::BLUE){
    vis->publishSphere(pos,color,rviz_visual_tools::scales::XXLARGE);
    vis->trigger();//!!
}

void hectorPoseCallback(const geometry_msgs::PoseStamped& poses){
    currentPos = poses.pose; //update position
}
bool addWaypointCallback(gbrobot::waypointInserter::Request& req, gbrobot::waypointInserter::Response& res){
    POIs.poses.push_back(currentPos);
    ROS_INFO("waypoint callback triggered.");
    indicatePos(currentPos.position);
    system((audioPrefix+"roadpoint-succ.ogg").c_str());
    std::cout <<"haha\n";
    return true;
}
bool resetCallback(gbrobot::reset::Request& req,gbrobot::reset::Response& res){
    POIs.poses.clear();
    deskPOIs.poses.clear();
    return true;
}
bool addDeskCallback(gbrobot::deskInserter::Request& req,gbrobot::deskInserter::Response& res){
    if (req.deskID>=DESKMAX) deskPOIs.poses.resize(req.deskID+5);
    if (cmpPose(deskPOIs.poses.at(req.deskID),defpos)){
        //no entry
        ROS_INFO("entry added for desk %ld",req.deskID);
    }else{
        ROS_INFO("entry updated for desk %ld",req.deskID);
    }
    deskPOIs.poses.at(req.deskID) = currentPos;
    indicatePos(currentPos.position,rviz_visual_tools::RED); // red ball
    system((audioPrefix+"desk-succ.ogg").c_str());
    return true;
}

void initPOIs(){
    //1. judge if prev POIs
    //2. if do, read
    //3. if not (currently by default):
    POIs.poses.resize(DESKMAX);
    deskPOIs.poses.resize(DESKMAX);
}
namespace math{
    inline double planeDist(const geometry_msgs::Point& a,const geometry_msgs::Point& b){
        return (sqrt(pow((a.x-b.x),2)+pow(a.y-b.y,2)));
    }
    inline double rotateDegree(const geometry_msgs::Point& org,const geometry_msgs::Point& dest,const double yaw){
        //calculate rotation degree needed *from current direction* to dest;
        return (atan2(dest.y-org.y,dest.x-org.x)*180.0/3.1415926-yaw);
    }
}
namespace control{
    inline void fd(){
        std_msgs::String msg;
        msg.data = "fd";
        comm.publish(msg);
    }
    inline void bk(){
        std_msgs::String msg;
        msg.data = "bk";
        comm.publish(msg);
    }
    inline void tl(){
        std_msgs::String msg;
        msg.data = "tl";
        comm.publish(msg);
    }
    inline void tr(){
        std_msgs::String msg;
        msg.data = "tr";
        comm.publish(msg);
    }
    inline void swiftStop(){
        std_msgs::String msg;
        msg.data = "swst";
        comm.publish(msg);
    }
    inline void gl(){
        std_msgs::String msg;
        msg.data = "gl";
        comm.publish(msg);
    }
    inline void gr(){
        std_msgs::String msg;
        msg.data = "gr";
        comm.publish(msg);
    }
    inline void halt(){
        std_msgs::String msg;
        msg.data = "stop";
        comm.publish(msg);
    }
}
using namespace control;
void nPoint(geometry_msgs::Pose goal,bool term = false) {
    auto rupd = ros::Rate(5);

    //navigate to a given point using naive approach.
    tf::Quaternion destQuat;
    tf::quaternionMsgToTF(goal.orientation, destQuat);
    double roll, pitch, yaw; //we only care about yaw.
    tf::Matrix3x3(destQuat).getRPY(roll, pitch, yaw);
    double destOrientation = yaw * 180 / (3.14159);

    tf::quaternionMsgToTF(currentPos.orientation, destQuat);
    tf::Matrix3x3(destQuat).getRPY(roll, pitch, yaw);
    double currOrientation = yaw * 180 / (3.14159);

    ROS_INFO("first make sure is not on the point itself..");
    if (fabs(math::rotateDegree(currentPos.position, goal.position, currOrientation)) < 5) return;

    ROS_INFO("dest = %lf, curr = %lf. Need to rotate %lf.",destOrientation,currOrientation,math::rotateDegree(currentPos.position, goal.position, currOrientation));
    rolling:
    if (fabs(math::rotateDegree(currentPos.position, goal.position, currOrientation)) > 5) {
        swiftStop();
        rupd.sleep();
        rupd.sleep();
        if (math::rotateDegree(currentPos.position, goal.position, currOrientation) < 0) {
            tr();
            ROS_INFO("rolling right");
        } else {
            tl();
            ROS_INFO("rolling left");
        }
        while (fabs(math::rotateDegree(currentPos.position, goal.position, currOrientation)) > 5) {
            ros::spinOnce();
            tf::quaternionMsgToTF(currentPos.orientation, destQuat);
            tf::Matrix3x3(destQuat).getRPY(roll, pitch, yaw);
            currOrientation = yaw * 180 / (3.14159);

            ROS_INFO("approaching with delta = %lf",math::rotateDegree(currentPos.position, goal.position, currOrientation));
            rupd.sleep();
        }
        swiftStop();
        ROS_INFO("approached. now go straight.");
    }
    fd();
    ROS_INFO("plane dist = %lf",math::planeDist(goal.position, currentPos.position));
    while (math::planeDist(goal.position, currentPos.position) > 0.4) { //20cm
        if (fabs(math::rotateDegree(currentPos.position, goal.position, currOrientation)) > 5) {
            ROS_INFO("angle biased too much during linear walk: goto rolling.");
            swiftStop();
            rupd.sleep();
            goto rolling;
        }
        ros::spinOnce();
        tf::quaternionMsgToTF(currentPos.orientation, destQuat);
        tf::Matrix3x3(destQuat).getRPY(roll, pitch, yaw);
        currOrientation = yaw * 180 / (3.14159);

        ROS_INFO("approaching linear with delta = %lf",math::planeDist(goal.position, currentPos.position));
        rupd.sleep();
    }
    if (term) swiftStop();
    ROS_INFO("arrived.");
}

bool navigateCallback(gbrobot::navigate::Request& req, gbrobot::navigate::Response& resp){
    if (req.desk>0){
        auto destination = deskPOIs.poses.at(req.desk);
        //navigate to a certain desk

        //1. find nearest POI

        auto it = POIs.poses.begin();auto nearestPOI = it;double minDist = 100000;
        while (it!=POIs.poses.end()){
            if (math::planeDist((*it).position,currentPos.position)<minDist) {
                minDist = math::planeDist((*it).position, currentPos.position);
                nearestPOI = it;
            }
            it++;
        }
        if (minDist==100000) ROS_ERROR("Error in finding nearest POI.");
        ROS_INFO("finded nearest POI with a distance of %lf.",minDist);

        //2. find nearest POI to destinated desk
        auto it2 = POIs.poses.begin();auto nearestDestPOI = it2;double minDestDist = 100000;
        while (it2!=POIs.poses.end()){
            if (math::planeDist((*it2).position,destination.position)<minDestDist){
                minDestDist= math::planeDist((*it2).position,destination.position);
                nearestDestPOI = it2;
            }
            it2++;
        }
        if (minDestDist==100000) ROS_ERROR("Error in finding nearest POI to destination.");
        ROS_INFO("finded nearest POI to destination with a distance of %lf.",minDestDist);

        //3. navigate into "orbit"
        nPoint((*nearestPOI));
        //4. orbit
        while (nearestPOI!=(nearestDestPOI)){
            nPoint((*nearestPOI));
            nearestPOI++;
        }
        //5. navagate into destinated desk
        nPoint(destination,true);
    }
}
namespace Debug{
    void maneuverabilityCheck(){
        ROS_INFO("testing the maneuverability");
        auto r = ros::Rate(1);
        fd();
        r.sleep();
        bk();
        r.sleep();
        tl();
        r.sleep();
        tr();
        r.sleep();
        gl();
        r.sleep();
        gr();
        r.sleep();
        swiftStop();
//        ROS_INFO("now perform swift routine.");
//        r.sleep();
//        fd();
//        r.sleep();
//        swiftStop();
//
    }
    void rpyCheck(){
        //print out current pose's R P Y;
        tf::Quaternion quat;
        tf::quaternionMsgToTF(currentPos.orientation,quat);
        double r,p,y;
        tf::Matrix3x3(quat).getRPY(r,p,y);
        y = y*180/(3.14159);
        ROS_INFO("Roll=%lf,Pitch=%lf,Yaw=%lf\n",r,p,y);
    }
    void nPointCheck(){// goto (1,1)
        geometry_msgs::Pose destTest;
        destTest.position.x = 1;
        destTest.position.y = 1;
        destTest.position.z = 0;
        indicatePos(destTest.position);
        nPoint(destTest,true);
    }
    void circularCheck(){
        // supposed to go back to basepoint, then circular around the room
        ROS_INFO("heading to base:roadpoint 0...");
        nPoint(POIs.poses.at(0),true);
        int i = 0;
        for (auto point:POIs.poses){
            nPoint(point,false);
            ROS_INFO("navigated to roadpoint %d",i);
            i++;
        }
        ROS_INFO("navigated.Now head back to base.");
        control::swiftStop();
        nPoint(POIs.poses.at(0),true);
        ROS_INFO("test complete.");
    }
    bool testRPY(gbrobot::debug::Request& req,gbrobot::debug::Response& res){

        circularCheck();
        return true;
    }
    void loadTestWaypoints(){
        geometry_msgs::Pose test;
        test.position.x = 2;//2 meters
        POIs.poses.push_back(test);//POIs[0] = (2,0,0) (0,0,0,1)
    }

}
int main(int argc,char** argv){
    initPOIs();
    ros::init(argc,argv, "waypointInserter");
    ROS_INFO("GB-1 Automatic Meal Delivery Service version 1.2 beta");
    ROS_INFO("Pityhero And His Friends Inc. (C) 2020-2023 All Rights Reserved.");

    ros::NodeHandle nh;
    ros::Subscriber HectorPoseSub = nh.subscribe("/slam_out_pose",1000,hectorPoseCallback);
    vis = new rviz_visual_tools::RvizVisualTools("map","/visualize",nh);
    comm = nh.advertise<std_msgs::String>("/comm",5);
    ros::ServiceServer addPOIServer = nh.advertiseService("addWaypoint",addWaypointCallback);
    ros::ServiceServer addDeskServer = nh.advertiseService("addDesk",addDeskCallback);
    ros::ServiceServer resetServer = nh.advertiseService("resetWaypoint",resetCallback);
    ros::ServiceServer debugServer = nh.advertiseService("debugGB",Debug::testRPY);
    halt();
    system((audioPrefix+"start.ogg").c_str());
    ros::spin();
    return 0;
}