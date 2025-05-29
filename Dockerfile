# Use the official Node.js LTS image
FROM node:18

# Set the working directory
WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm ci

# Copy the rest of your application code
COPY . .

# Define the command to run your MCP server
CMD ["node", "index.ts"]
