FROM node:14.17.1 as build 

WORKDIR /node/app

COPY ./index.js /node/app

ENV NODE_ENV production

ENV PORT 4000
EXPOSE 4000

CMD ["node", "index.js"]
