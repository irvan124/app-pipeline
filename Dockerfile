# DOWNLOAD IMAGE FROM DOCKER HUB (Node Image)
FROM node:latest

# Copy the data to the container || . .  => means copy from this directory to this directory
COPY . .

# Running command on the Container, can use NPM cause we install node app
RUN npm install

# Execute the Program based on command line (Nodejs)
CMD ["node", "src/server.js"]
