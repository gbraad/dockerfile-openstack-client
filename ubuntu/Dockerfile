FROM ubuntu:xenial
MAINTAINER Gerard Braad <me@gbraad.nl>

ADD run_container.sh /tmp/
RUN /tmp/run_container.sh

RUN mkdir /root/.stack
VOLUME /root/.stack

CMD ["bash"]