FROM ubuntu:latest

EXPOSE 2113

CMD ["/home/app/run-node.sh", "--ext-ip=0.0.0.0", "--db", "/data/db", "--log", "/data/logs", "--run-projections=all"]

# Install dependencies
RUN apt-get update -qq && \
    apt-get -y install \
    curl \
    tar

RUN mkdir -p /data/db /data/logs

# run the server
WORKDIR /home

RUN curl \
    http://download.geteventstore.com/binaries/EventStore-OSS-Ubuntu-14.04-v3.5.0.tar.gz \
    -o EventStore-OSS-Ubuntu-14.04-v3.5.0.tar.gz

RUN tar xfz EventStore-OSS-Ubuntu-14.04-v3.5.0.tar.gz

RUN mv EventStore-OSS-Ubuntu-14.04-v3.5.0 app

RUN rm EventStore-OSS-Ubuntu-14.04-v3.5.0.tar.gz






