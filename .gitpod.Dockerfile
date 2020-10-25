FROM gitpod/workspace-full

USER gitpod

RUN sudo apt-get update -q

RUN gpg2 --keyserver hkp://keys.gnupg.net --recv-keys D39DC0E3
RUN curl -sSL https://get.rvm.io | bash -s

# Install custom tools, runtime, etc. using apt-get
# For example, the command below would install "bastet" - a command line tetris clone:
#
RUN /bin/bash -l -c ". /etc/profile.d/rvm.sh && rvm install 2.7.1"
#
# More information: https://www.gitpod.io/docs/config-docker/
