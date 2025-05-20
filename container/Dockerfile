FROM ubuntu:latest

# Set non-interactive frontend to avoid prompts during build
ENV DEBIAN_FRONTEND=noninteractive

# Update (again after adding repository to apt) and Upgrade
RUN apt-get update && apt-get upgrade -y

# software-properties-common - For installing freecad
#RUN apt-get install software-properties-common apt-transport-https -y
#RUN add-apt-repository ppa:freecad-maintainers/freecad-stable -y
#RUN apt-get update
#RUN apt-get install libxcb-xinerama0 libxcb-icccm4 libxcb-image0 libxcb-keysyms1 libxcb-randr0 libxcb-render-util0 libxcb-shape0 libxcb-sync1 libxkbcommon-x11-0 -y

# freecad - https://launchpad.net/~freecad-maintainers/+archive/ubuntu/freecad-stable
# NB! This FreeCad is an old version (v0.21.2) not part of the v1.0.x version(s)
#RUN apt-get install freecad -y

# git - For version control. https://packages.ubuntu.com/noble/git
RUN apt-get install git -y


# OPTION 1

#RUN git clone --recurse-submodules https://github.com/FreeCAD/FreeCAD.git freecad-source

#RUN add-apt-repository ppa:freecad-maintainers/freecad-daily
#RUN apt update
#RUN apt install freecad-daily

#RUN apt install build-essential cmake libtool lsb-release python3 swig -y
#RUN apt install libboost-dev libboost-date-time-dev libboost-filesystem-dev libboost-graph-dev \
#    libboost-iostreams-dev libboost-program-options-dev libboost-python-dev libboost-regex-dev \
#    libboost-serialization-dev libboost-thread-dev \
#    -y

#RUN apt install libcoin-dev -y

#RUN apt install libeigen3-dev libgts-bin libgts-dev libkdtree++-dev libmedc-dev libopencv-dev \
#    libproj-dev libvtk9-dev libx11-dev libxerces-c-dev libyaml-cpp-dev libzipios++-dev libpcl-dev \
#    -y

# For Debian Trixie
#RUN apt install \
#    pybind11-dev \
#    qt6-base-dev \
#    qt6-svg-dev \
#    qt6-tools-dev \
#    qt6-webengine-dev \
#    libpyside6-dev \
#    libshiboken6-dev \
#    pyside6-tools \
#    pyqt6-dev-tools \
#    python3-dev \
#    python3-matplotlib \
#    python3-packaging \
#    python3-pivy \
#    python3-ply \
#    python3-pyside6.qtcore \
#    python3-pyside6.qtgui \
#    python3-pyside6.qtnetwork \
#    python3-pyside6.qtsvg \
#    python3-pyside6.qtwebchannel \
#    python3-pyside6.qtwebenginecore \
#    python3-pyside6.qtwebenginequick \
#    python3-pyside6.qtwebenginewidgets \
#    python3-pyside6.qtwidgets \
#    -y


#RUN apt install \
#    pybind11-dev \
#    qtbase5-dev \
#    qttools5-dev \
#    libqt5opengl5-dev \
#    libqt5svg5-dev \
#    qtwebengine5-dev \
#    libqt5xmlpatterns5-dev \
#    libqt5x11extras5-dev \
#    libpyside2-dev \
#    libshiboken2-dev \
#    pyside2-tools \
#    pyqt5-dev-tools \
#    python3-dev \
#    python3-matplotlib \
#    python3-packaging \
#    python3-pivy \
#    python3-ply \
#    python3-pyside2.qtcore \
#    python3-pyside2.qtgui \
#    python3-pyside2.qtsvg \
#    python3-pyside2.qtwidgets \
#    python3-pyside2.qtnetwork \
#    python3-pyside2.qtwebengine \
#    python3-pyside2.qtwebenginecore \
#    python3-pyside2.qtwebenginewidgets \
#    python3-pyside2.qtwebchannel \
#    -y

#RUN apt install libocct*-dev -y


# Optional
#RUN apt install \
#    libsimage-dev \
#    doxygen \
#    libspnav-dev \
#    checkinstall \
#    -y


# OPTION 2

#RUN apt install wget -y
#RUN wget https://github.com/FreeCAD/FreeCAD/releases/download/1.0.1/FreeCAD_1.0.1-conda-Linux-x86_64-py311.AppImage
# CONTINUE






# Clean up
RUN rm -rf /var/lib/apt/lists/*

#RUN cd freecad-source
#RUN mkdir build
#RUN cd build
#RUN cmake ../
#RUN make -j$(nproc --ignore=2)

# runtime-freecad
#RUN mkdir -p /tmp/runtime-freecad && chmod 0700 /tmp/runtime-freecad

# Make workspace directory
RUN mkdir /workspace

# NB! Test first to see if it works. Might be conflicting with how the folder is created with devcontainer.json.
# Making changes in that folder useless from the Dockerfile.

WORKDIR /workspace
# Command to run freecad
#CMD ["freecad"]
