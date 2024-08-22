#!/usr/bin/env python3

import rospy
from std_msgs.msg import String
from task3_pkg.msg import node1, node2

def callback(data):
    rospy.loginfo(rospy.get_caller_id() + "%s", data.data1)

def talkerCumlistener():
    pub = rospy.Publisher('chat', node2, queue_size = 10 )
    rospy.init_node('talkerCumlistener', anonymous = True)
    rate = rospy.Rate(10)
    rospy.Subscriber('chat', node1, callback)
    msg = node2()
    while not rospy.is_shutdown():
        msg.data2 = input()
        pub.publish(msg)
        rospy.loginfo(msg.data2)
        rate.sleep()

if __name__ == '__main__':
    try:
        talkerCumlistener()
    except rospy.ROSInterruptException:
        pass



