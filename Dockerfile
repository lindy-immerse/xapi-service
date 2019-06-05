FROM node:8@sha256:957cab2653bde49d195e0a98c6ae0c1700ed51eb94fce30faadaceacf331a0a1
ENV NPM_CONFIG_LOGLEVEL warn
WORKDIR /usr/src/app

COPY package.json package.json
COPY yarn.lock yarn.lock
RUN yarn install --production --ignore-engines
COPY dist dist

EXPOSE 80
CMD ["yarn", "start"]
