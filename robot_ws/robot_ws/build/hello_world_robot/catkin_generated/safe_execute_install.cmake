execute_process(COMMAND "/home/ubuntu/environment/aws-robomaker-sample-application-helloworld/robot_ws/build/hello_world_robot/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/ubuntu/environment/aws-robomaker-sample-application-helloworld/robot_ws/build/hello_world_robot/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
