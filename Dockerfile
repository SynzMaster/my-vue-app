# Use an official Node.js runtime as a parent image
FROM node:latest

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install the project dependencies
RUN npm install

# Copy all local files to the container
COPY . .

# Build the Vue.js application for production
RUN npm run build

# Expose the port the app runs on
EXPOSE 8081

# Define the command to run the application
CMD ["npm", "run", "serve"]
