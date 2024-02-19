FROM node:21.6.2 AS build

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

RUN npm run build

RUN npm install -g serve

EXPOSE 3000

# Command to run the application with serve
CMD ["serve", "-s", "build", "-l", "3000", "-n", "5000", "0.0.0.0"]
