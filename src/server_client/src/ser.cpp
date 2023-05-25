#include<iostream>
#include<ros/ros.h>
#include "server_client/twoadd.h"
bool domessage(server_client::twoadd::Request &req,server_client::twoadd::Response &res){
    int num1=req.num1;
    int num2=req.num2;
    ROS_INFO("服务端接收的数据为：%d %d",num1,num2);
    res.ret= num1+num2;
    return true;
}
int main(int argc,char* argv[]){
    ros::init(argc,argv,"Addserver");
    ros::NodeHandle nh;
    ros::ServiceServer serv=nh.advertiseService("topic",domessage);
    ros::spin();
    return 0;

}