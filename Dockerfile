FROM debian:stretch

MAINTAINER Martin Venuš <martin.venus@neatous.cz>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get -y install python-pip python-dev
RUN pip install shodan

ENTRYPOINT ["/bin/bash"]
