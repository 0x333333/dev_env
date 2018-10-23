FROM ubuntu:18.04

RUN apt-get update && apt-get -y install sudo

RUN useradd -ms /bin/bash 0x333 && adduser 0x333 sudo && echo '0x333:333' | chpasswd

RUN sudo apt-get update && apt-get install -y \
	vim \
	git \
	automake \
	build-essential \
	curl
RUN sudo apt-get install -y tmux

USER 0x333
WORKDIR /home/0x333/

CMD /bin/bash
