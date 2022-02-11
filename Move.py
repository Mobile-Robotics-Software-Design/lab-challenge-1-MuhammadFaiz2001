#! /usr/bin/env python
import rospy
from geometry_msgs.msg import Twist
import time

class MoveRobotStopOnShutdown(object):
    '''Class responsible for moving robot and stopping it on shutdown '''

    def __init__(self):
        ''' Initialize! '''

        # create publisher and message as instance variables
        self.publisher = rospy.Publisher('/cmd_vel', Twist, queue_size=1)
        self.msg = Twist()

        # do some cleanup on shutdown
        rospy.on_shutdown(self.clean_shutdown)

        # start by moving robot
        rospy.init_node('move_and_stop_robot')
        self.move_robot()
        rospy.spin()

    def publish(self, msg_type="move"):
        ''' Publish the Twist message '''

        while self.publisher.get_num_connections() < 1:
            # wait for a connection to publisher
            rospy.loginfo("Waiting for connection to publisher...")
            time.sleep(1)

        rospy.loginfo("Connected to publisher.")

        rospy.loginfo("Publishing %s message..." % msg_type)
        self.publisher.publish(self.msg)

    def move_robot(self):
        ''' Set linear velocity to move robot'''

        self.msg.linear.x = 0.2
        self.publish()

        time.sleep(55) # sleep and then stop

        rospy.signal_shutdown("We are done here!")

    def clean_shutdown(self):
        ''' Stop robot when shutting down '''

        rospy.loginfo("System is shutting down. Stopping robot...")
        self.msg.linear.x = 0
        self.publish("stop")

if __name__ == '__main__':
    MoveRobotStopOnShutdown()
