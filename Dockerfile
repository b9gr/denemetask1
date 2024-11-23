# Use an official Node.js image as the base
FROM node:14

# Set the working directory inside the container
WORKDIR /app

 
COPY package*.json ./

# install dependencies
RUN npm install

# copy the application code
COPY . .

# the port the app runs on
EXPOSE 8080

# define the command to run the app
# taken from github repo
CMD ["node", "server.js"]