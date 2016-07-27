FROM registry.gitlab.com/gbraad/fedora:24
MAINTAINER Gerard Braad <me@gbraad.nl>

ADD run_container.sh /tmp/
RUN /tmp/run_container.sh

RUN mkdir /root/.stack; mkdir -p /root/.config/openstack
VOLUME ["/root/.stack", "/root/.config/openstack"]

CMD ["bash"]