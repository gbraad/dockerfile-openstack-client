FROM centos:7
MAINTAINER Gerard Braad <me@gbraad.nl>

ADD run_container.sh /tmp/
RUN /tmp/run_container.sh; \
    rm -rf /tmp/run_container.sh; \
    mkdir /root/.stack; \
    mkdir -p /root/.config/openstack; \
    mkdir -p /workspace

VOLUME ["/root/.stack", "/root/.config/openstack", "/workspace"]
WORKDIR /workspace

CMD ["bash"]
