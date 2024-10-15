# Use a Node.js base image
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json files
COPY package*.json ./

# Install the dependencies
RUN npm install

# Copy the application code to the container
COPY . .

# Expose the port the app runs on
EXPOSE 3000

# Run the application
CMD ["npm", "start"]

