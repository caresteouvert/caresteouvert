FROM node:12

USER node
#ENV NODE_ENV=production  # can't set this since we need icon-font-generator from devDependencies
EXPOSE 1234
ENV NUXT_HOST=0.0.0.0
ENV NUXT_PORT=1234

WORKDIR /home/node/
COPY --chown=node:node . /home/node/

RUN yarn install
RUN yarn run build

CMD ["yarn", "run", "start"]
