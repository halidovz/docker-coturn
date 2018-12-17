FROM ubuntu:16.04
MAINTAINER Buddhika Jayawardhana <jay@meetrix.io>

RUN apt-get update && apt-get install -y coturn && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ADD start_coturn.sh start_coturn.sh
RUN chmod +x start_coturn.sh

CMD ["./start_coturn.sh"]
