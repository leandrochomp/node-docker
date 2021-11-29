FROM node:17-alpine3.12 as common

#WORKDIR /work/src/server

#USER node

COPY . .

ENV PORT=8080

EXPOSE 8080

ENTRYPOINT /bin/bash

#VOLUME [ "/work/src/server" ]

#CMD [ "npm", "start" ]