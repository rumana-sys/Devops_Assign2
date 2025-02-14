# Use the official Node.js image as a base (LTS version)
FROM node:14

# Create and set the working directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json files
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy the rest of your application code
COPY . .

# Expose port 8080 (Cloud Run default)
EXPOSE 8080

# Start the application
CMD [ "node", "index.js" ]
