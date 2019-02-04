FROM node:8.9.1-alpine

WORKDIR /usr/src/app
VOLUME [ "/usr/src/app" ]
RUN npm install -g yarn
RUN yarn install

EXPOSE 5000

CMD [ "yarn", "start"]

RUN apk add --no-cache openssl

# ENV DOCKERIZE_VERSION v0.6.1
# RUN wget https://github.com/jwilder/dockerize/releases/download/$DOCKERIZE_VERSION/dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    # && tar -C /usr/local/bin -xzvf dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    # && rm dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz
