FROM registry.gitlab.com/gbraad/ubuntu:xenial
MAINTAINER Gerard Braad <me@gbraad.nl>

ADD run_container.sh /tmp/
RUN /tmp/run_container.sh

RUN mkdir /root/.stack; mkdir -p /root/.config/openstack; mkdir -p /workspace
VOLUME ["/root/.stack", "/root/.config/openstack", "/workspace"]
WORKDIR /workspace

CMD ["bash"]
