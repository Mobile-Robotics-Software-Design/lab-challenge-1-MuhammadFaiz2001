# Install script for directory: /home/ubuntu/environment/aws-robomaker-sample-application-helloworld/robot_ws/src/deps/turtlebot3-description-reduced-mesh

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/ubuntu/environment/aws-robomaker-sample-application-helloworld/robot_ws/install/turtlebot3_description_reduced_mesh")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/ubuntu/environment/aws-robomaker-sample-application-helloworld/robot_ws/build/turtlebot3_description_reduced_mesh/catkin_generated/installspace/turtlebot3_description_reduced_mesh.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot3_description_reduced_mesh/cmake" TYPE FILE FILES
    "/home/ubuntu/environment/aws-robomaker-sample-application-helloworld/robot_ws/build/turtlebot3_description_reduced_mesh/catkin_generated/installspace/turtlebot3_description_reduced_meshConfig.cmake"
    "/home/ubuntu/environment/aws-robomaker-sample-application-helloworld/robot_ws/build/turtlebot3_description_reduced_mesh/catkin_generated/installspace/turtlebot3_description_reduced_meshConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot3_description_reduced_mesh" TYPE FILE FILES "/home/ubuntu/environment/aws-robomaker-sample-application-helloworld/robot_ws/src/deps/turtlebot3-description-reduced-mesh/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/turtlebot3_description_reduced_mesh" TYPE DIRECTORY FILES
    "/home/ubuntu/environment/aws-robomaker-sample-application-helloworld/robot_ws/src/deps/turtlebot3-description-reduced-mesh/launch"
    "/home/ubuntu/environment/aws-robomaker-sample-application-helloworld/robot_ws/src/deps/turtlebot3-description-reduced-mesh/meshes"
    "/home/ubuntu/environment/aws-robomaker-sample-application-helloworld/robot_ws/src/deps/turtlebot3-description-reduced-mesh/urdf"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/ubuntu/environment/aws-robomaker-sample-application-helloworld/robot_ws/build/turtlebot3_description_reduced_mesh/gtest/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/ubuntu/environment/aws-robomaker-sample-application-helloworld/robot_ws/build/turtlebot3_description_reduced_mesh/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
