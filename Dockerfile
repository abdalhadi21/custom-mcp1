# Use the official Node.js LTS image
FROM node:18

# Set the working directory
WORKDIR /

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of your application code
COPY . .

# Define the command to run your MCP server
CMD ["node", "index.js"]
