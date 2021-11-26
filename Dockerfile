#lighter version of node
FROM node:17-alpine3.12 as builder 

#USER node
ENV PORT 3000

EXPOSE 3000

ENTRYPOINT /bin/bash