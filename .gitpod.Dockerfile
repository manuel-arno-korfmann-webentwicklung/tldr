FROM gitpod/workspace-full

USER gitpod

# Install custom tools, runtime, etc. using apt-get
# For example, the command below would install "bastet" - a command line tetris clone:
#
RUN sudo apt-get -q update
RUN /bin/bash -l -c ". /etc/profile.d/rvm.sh && rvm install 2.7.1"
#
# More information: https://www.gitpod.io/docs/config-docker/
