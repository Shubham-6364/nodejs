# Use official Node.js image
FROM node:18-alpine

# Set app directory
WORKDIR /app

# Copy files
COPY package*.json ./
RUN npm install

COPY . .

# Expose port
EXPOSE 3000

# Start the app
CMD ["node", "app.js"]
