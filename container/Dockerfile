FROM ubuntu:latest


# Update (again after adding repository to apt) and Upgrade
RUN apt-get update && apt-get upgrade -y

# software-properties-common - For installing freecad
RUN apt-get install software-properties-common apt-transport-https -y
RUN add-apt-repository ppa:freecad-maintainers/freecad-stable -y
RUN apt-get update
RUN apt-get install libxcb-xinerama0 libxcb-icccm4 libxcb-image0 libxcb-keysyms1 libxcb-randr0 libxcb-render-util0 libxcb-shape0 libxcb-sync1 libxkbcommon-x11-0 -y

# freecad - https://launchpad.net/~freecad-maintainers/+archive/ubuntu/freecad-stable
RUN apt-get install freecad -y

# git - For version control. https://packages.ubuntu.com/noble/git
RUN apt-get install git -y


# Clean up
RUN rm -rf /var/lib/apt/lists/*

# runtime-freecad
RUN mkdir -p /tmp/runtime-freecad

# Make workspace directory
RUN mkdir /workspace

# NB! Test first to see if it works. Might be conflicting with how the folder is created with devcontainer.json.
# Making changes in that folder useless from the Dockerfile.

WORKDIR /workspace
# Command to run freecad
#CMD ["freecad"]
