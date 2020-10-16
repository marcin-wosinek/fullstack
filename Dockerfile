FROM node:12.19.0

EXPOSE 4200

WORKDIR /code

COPY package.json /code/package.json
COPY package-lock.json /code/package-lock.json

RUN npm install

# consider cleaning the package

COPY . /code

CMD [ "npm", "start" ]
