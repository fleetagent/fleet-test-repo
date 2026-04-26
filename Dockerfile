# Node.js application Dockerfile
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies
# Note: Using npm install since there's no package-lock.json
RUN npm install

# Copy source code
COPY . .

# Expose default port (adjust if needed)
EXPOSE 3000

# Default command - runs tests
# TODO: Update CMD when a start script or main entry point is added
CMD ["npm", "test"]
