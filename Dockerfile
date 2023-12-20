# Use an official Node runtime as a parent image
FROM node17

# Set the working directory in the container
WORKDIR usrsrcapp

# Copy package.json and package-lock.json
COPY package.json .

# Install dependencies
RUN npm install

# Bundle app source
COPY . .

# Build the React application
RUN npm run build

# Install serve to run the build
RUN npm install -g serve

# Your React app will be served on port 3000 by default, change if different
EXPOSE 3000

# Serve the build
CMD [serve, -s, build, -l, 3000]
