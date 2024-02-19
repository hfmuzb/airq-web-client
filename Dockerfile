from node:21.6.2-slim

WORKDIR /app

COPY public/ /app/public
COPY src/ /app/src
COPY package.json /app/

EXPOSE 3000

RUN npm install

CMD ["npm", "start"]
