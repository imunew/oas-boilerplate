FROM node:10.15.1

WORKDIR /app

RUN yarn init -y
RUN yarn add swagpack@^0.0.5
RUN yarn add oas-validator
RUN yarn add js-yaml

CMD [ "yarn", "run", "swagpack", "build", "./src/index.yml", "-o", "/app/dist/apispec.yml", "-w", "./src" ]
