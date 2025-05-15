# Use Node.js 16 to avoid OpenSSL issues with Webpack 4
FROM node:16

# Set the working directory
WORKDIR /app

# Copy package files and install dependencies
COPY package.json pnpm-lock.yaml ./
RUN npm install -g pnpm@6.32.11
RUN pnpm install

# Copy the rest of the application
COPY . .

# Expose the React app's default port
EXPOSE 3000

# Start the development server
CMD ["npm", "start"]

