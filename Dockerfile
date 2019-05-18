FROM ubuntu:bionic

RUN apt update && apt -y install sudo
RUN useradd -m docker && echo "docker:docker" | chpasswd && adduser docker sudo

ENTRYPOINT ["bash", "/data/bootstrap.sh"]
