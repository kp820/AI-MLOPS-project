# Use an official Node.js runtime as a parent image
FROM node:18

# Set the working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the app source
COPY . .

# Expose port (if needed)
EXPOSE 3000

# Run the app (update if your app needs something else)
CMD ["npm", "start"]
