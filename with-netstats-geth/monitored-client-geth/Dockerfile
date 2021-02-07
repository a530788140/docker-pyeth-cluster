FROM ethereum/client-go

RUN apk update && apk add git curl nodejs npm perl

RUN cd /root &&\
    git clone https://github.com/cubedro/eth-net-intelligence-api &&\
    npm install && npm install -g pm2

ADD start.sh /root/start.sh
ADD UTC--2021-02-07T12-01-55.834145387Z--5d0fd9faf0bd0e1fab538a82c2d0a002b87ea0e1 /root/UTC--2021-02-07T12-01-55.834145387Z--5d0fd9faf0bd0e1fab538a82c2d0a002b87ea0e1
ADD genesis.json /root/genesis.json
ADD app.json /root/eth-net-intelligence-api/app.json
RUN chmod +x /root/start.sh

ENTRYPOINT /root/start.sh
