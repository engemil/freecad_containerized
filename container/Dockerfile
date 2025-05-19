FROM ubuntu:latest

# Update (again after adding repository to apt) and Upgrade
RUN apt-get update && apt-get upgrade -y

# git - For version control. https://packages.ubuntu.com/noble/git
RUN apt-get install git -y

# freecad
RUN apt-get install freecad -y

# Clean up
RUN rm -rf /var/lib/apt/lists/*

# Make workspace directory
RUN mkdir /workspace

# NB! Test first to see if it works. Might be conflicting with how the folder is created with devcontainer.json.
# Making changes in that folder useless from the Dockerfile.

# Get ChibiOS Repository from Github
#RUN git clone https://github.com/ChibiOS/ChibiOS /workspace/ChibiOS

WORKDIR /workspace
# Command to run freecad
#CMD ["freecad"]
