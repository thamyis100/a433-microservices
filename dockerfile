# Use a base image with the required environment (e.g., Node.js, Python, Java, etc.)
# Example: Node.js
FROM node:14

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json (if applicable) into the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application source code
COPY . .

# Expose the port the app runs on (adjust if necessary)
EXPOSE 3000

# Define the command to start the app
CMD ["node", "index.js"]
