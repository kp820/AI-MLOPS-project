# # Use official base image
# FROM node:18-alpine

# Using Amazon ECR public Node image instead of Docker Hub
FROM public.ecr.aws/docker/library/node:18-alpine

# Set working directory
WORKDIR /app

# Copy package.json to /app and install node.js dependencies listed in package.json
COPY package*.json ./
RUN npm install

# Copy app source code from the local machine to the directory in container
COPY . .

# Expose port
# Informs Docker that the application will listen on port 3000
# This is the port our app will use to serve requests.
EXPOSE 3000

# Start app by running the command
# CMD is the default command to run when the container starts
# This command will run the app.js file using Node.js
# The app.js file is the entry point of our application
CMD [ "node", "app.js" ]