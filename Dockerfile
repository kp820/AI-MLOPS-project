# Use current Node LTS
FROM node:20-alpine

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
