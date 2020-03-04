# Install Node/Npm
FROM node:12.16-alpine

LABEL maintainer="sahmed56@hotmail.com"

# Create app directory
WORKDIR /usr/src/app

# Copy Application Dependencies wherever available
COPY package*.json ./

# Use npm ci instead of npm install for production applications
RUN npm ci --only=production

# Bundle app source
COPY . . 

# Expose App Specific Port
EXPOSE 8081

# Run as non-root user
USER node

# Run the Application
CMD ["node", "server.js"]