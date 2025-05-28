# Use a lightweight base image
FROM node:18-alpine

# Create a non-root user
RUN addgroup -S appgroup && adduser -S appuser -G appgroup

# Set working directory
WORKDIR /app

# Copy app files
COPY package*.json ./
RUN npm install
COPY . .

# Change ownership to non-root user
RUN chown -R appuser:appgroup /app

# Switch to non-root user
USER appuser

# Expose the port
EXPOSE 3000

# Start the service
CMD ["npm", "start"]
