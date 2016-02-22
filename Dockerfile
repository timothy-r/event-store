FROM ubuntu:latest

EXPOSE 2113

CMD ["/home/app/run-node.sh", "--ext-ip=0.0.0.0", "--db", "/data/db", "--log", "/data/logs", "--run-projections=all"]

# add event store files
COPY event-store/ /home/app

RUN mkdir -p /data/db /data/logs

# run the server
WORKDIR /home/app

