# Use a lightweight Node.js image
FROM node:18-alpine

# Set the working directory
WORKDIR /usr/apps/hello-docker/

# Copy application files (including the CSS directory and HTML file)
COPY index.html .
COPY css/style.css css/style.css

# Install http-server globally
RUN npm install -g http-server

# Expose port 8080 for the application
EXPOSE 8080

# Start the http-server on port 8080
CMD ["http-server", "-p", "8080", "-s"]

