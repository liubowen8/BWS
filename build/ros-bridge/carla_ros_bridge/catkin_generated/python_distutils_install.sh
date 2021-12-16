#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/l/bws/src/ros-bridge/carla_ros_bridge"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/l/bws/install/lib/python3/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/l/bws/install/lib/python3/dist-packages:/home/l/bws/build/lib/python3/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/l/bws/build" \
    "/home/l/anaconda3/envs/huawei/bin/python3" \
    "/home/l/bws/src/ros-bridge/carla_ros_bridge/setup.py" \
     \
    build --build-base "/home/l/bws/build/ros-bridge/carla_ros_bridge" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/l/bws/install" --install-scripts="/home/l/bws/install/bin"
