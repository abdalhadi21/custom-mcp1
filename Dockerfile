# Use the official Node.js 18 image as the base
FROM node:18-alpine

# Set working directory inside the container
WORKDIR /app

# Copy package.json and install dependencies
COPY package.json .
RUN npm install

# Copy the rest of the application code
COPY index.js .
COPY start.sh .

# Make start.sh executable
RUN chmod +x start.sh

# Expose any necessary ports (optional, depending on transport; none for stdio)
# EXPOSE 8080

# Command to run the application
CMD ["./start.sh"]
