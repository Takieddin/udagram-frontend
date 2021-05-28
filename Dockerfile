
# Use NodeJS base image
FROM node:latest

# Create app directory in Docker
WORKDIR /usr/src/app

# Install app dependencies by copying
# package.json and package-lock.json
COPY package*.json ./

# Install dependencies in Docker
RUN npm install
RUN npm install -g ionic


# Copy app from local environment into the Docker image
COPY . .
RUN  npm  build

# Set the API’s port number
EXPOSE 8100

# Define Docker’s behavior when the image  is run
CMD ["npm", "start"]