FROM node:18-alpine

# Create an app directory
WORKDIR /app

# Install App Dependencies
COPY package*.json ./

# Run npm install
RUN npm install

# Bundle App Source
COPY . . 

EXPOSE 8080

CMD [ "npm", "start" ]


