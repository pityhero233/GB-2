#!/usr/bin/env python
import rospy
import readchar
import sys
from std_msgs.msg import String
from gbrobot.srv import *
if __name__ == "__main__":
	print("GB-2 Robotics Test Suite")
	print("By pityhero and his friends Inc.")
	print("Press ] to escape.")
	pub = rospy.Publisher("comm",String,queue_size=10)
	rospy.init_node("debugController", anonymous=True)
	c = ""
	while (not rospy.is_shutdown()):
		c = readchar.readchar()
		if c=="w":
			pub.publish("fd")
		elif c=="s":
			pub.publish("bk")
		elif c=="a":
			pub.publish("tl")
		elif c=="d":
			pub.publish("tr")
		elif c=="q":
			pub.publish("stop")
		elif c=="e":
			rospy.wait_for_service('addWaypoint')
			try:
				sp = rospy.ServiceProxy("addWaypoint",waypointInserter)
				resp = sp()
				print("new waypoint created.")
			except Exception as e:
				print("error:"+str(e))
		elif c=="]":
			sys.exit()
		else:
			pub.publish("stop")
			print("? "+c)
	print("yes!")
