# Use official Node.js LTS image
FROM node:14

# Set the working directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application files
COPY . .

# Expose port 8080 for Cloud Run
EXPOSE 8080

# Start the application
CMD ["node", "index.js"]
