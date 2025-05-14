# Use current Node LTS
FROM node:20-alpine

<<<<<<< HEAD
FROM node:18-alpine 
WORKDIR app 
COPY . .  
RUN npm install
RUN npm run test
EXPOSE 8000
CMD ["node","app.js"] ## this runs inside the docker 

=======
# Create app directory
WORKDIR /usr/src/app

# Install dependencies first (better caching)
COPY package*.json ./
RUN npm ci --only=production

# Copy app source
COPY . .

# Optional: Build step if needed
# RUN npm run build

# Runtime command
CMD ["npm", "start"]
>>>>>>> 3853ba2369df939da3424c541dce7e603269d9e7
