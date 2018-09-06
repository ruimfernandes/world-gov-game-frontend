FROM node:9.4.0

ADD package.json /src/package.json

ADD . /src

RUN cd /src && npm install

WORKDIR /src

CMD ["npm", "run", "production"]