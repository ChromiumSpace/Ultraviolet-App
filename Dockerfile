# Base image
FROM node:latest

# Create app directory
WORKDIR /app

# Clone repository
RUN git clone https://github.com/TheNearEnd/testspace

# Install dependencies
WORKDIR /app/testspace
RUN npm install

# Go back to app directory
WORKDIR /app

# Install local package
RUN npm install ./testspace

# Start the application
CMD ["npm", "start"]
