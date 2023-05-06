FROM node:alpine

#create the working directory inside the container
WORKDIR /usr/src/app

# copy package.json file to working directory
COPY package.json ./

# run npm install
RUN npm install

#copy the generated mpdules
COPY . .

EXPOSE 3000:3000

CMD ["node", "app.js"]
