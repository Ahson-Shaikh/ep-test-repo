# Use official Node.js runtime as base image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json (if available)
COPY package*.json ./

# Install dependencies
RUN npm install --omit=dev

# Copy application code
COPY . .

# Expose the port the app runs on
EXPOSE 3001

# Set environment variable
ENV NODE_ENV=production

# Run the application
CMD ["npm", "start"]
