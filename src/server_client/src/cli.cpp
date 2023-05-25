#include<ros/ros.h>
#include<server_client/twoadd.h>

int main(int argc,char *argv[]){
    ros::init(argc,argv,"client");
    ros::NodeHandle nh;
    ros::ServiceClient clien=nh.serviceClient<server_client::twoadd>("topic");
    ros::service::waitForService("topic");
    server_client::twoadd req_data;
    req_data.request.num1=atoi(argv[1]);
    req_data.request.num2=atoi(argv[2]);
    bool ret_flag=clien.call(req_data);
    if(ret_flag){
        ROS_INFO("RESPONSE DATA=%d",req_data.response.ret);
    }else{
       ROS_INFO("fail"); 
       return -1;
    }
    return 0;

}