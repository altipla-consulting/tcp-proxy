
FROM google/debian:jessie
MAINTAINER Ernesto Alejo <ernesto@altiplaconsulting.com>

RUN apt-get update && \
    apt-get -y install socat

CMD socat TCP-LISTEN:$LOCAL_PORT,fork TCP:$REMOTE_HOST:$REMOTE_PORT
