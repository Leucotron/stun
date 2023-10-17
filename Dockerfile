FROM debian:12
RUN apt update
RUN apt install -y net-tools
COPY start.sh /opt/
