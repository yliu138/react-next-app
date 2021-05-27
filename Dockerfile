FROM node:alpine

WORKDIR /usr/src

COPY . /usr/src/

RUN npm clean-install

RUN npm run build

EXPOSE 3000
CMD ["npm", "start"]