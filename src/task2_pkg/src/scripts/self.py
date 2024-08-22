#!/usr/bin/env python3

import rospy
from std_msgs.msg import String

def callback(data):
    rospy.loginfo(rospy.get_caller_id() + "I heard %s", data.data)

def talkerCumlistener():
    pub = rospy.Publisher('node', String, queue_size = 10)
    rospy.init_node('talkerCumlistener', anonymous = True)
    rate = rospy.Rate(10)
    rospy.Subscriber('node', String, callback)
    while not rospy.is_shutdown():
        hello_str = input("tell me something: ")
        pub.publish(hello_str)
        rospy.loginfo(hello_str)
        rate.sleep()

if __name__ == '__main__':
    try:
        talkerCumlistener()
    except rospy.ROSInterruptException:
        pass     
