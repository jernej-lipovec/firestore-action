FROM node:10

LABEL version="1.1"
LABEL maintainer="Fredrik Stål <fredrik.stil@gmail.com>"

RUN npm i -g firebase-tools

RUN apt upgrade && apt update
RUN apt install default-jre -y

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
