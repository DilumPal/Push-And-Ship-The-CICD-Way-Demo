# Use official Node.js LTS image
FROM node:18-alpine3.21

# Create app directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the code
COPY . .

# Expose the port
EXPOSE 8080

# Start the app
CMD [ "npm", "start" ]