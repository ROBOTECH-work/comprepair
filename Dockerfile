# Use a lightweight nginx image
FROM nginx:alpine

# Set working directory
WORKDIR /usr/share/nginx/html

# Clean the default web files
RUN rm -rf ./*

# Copy all project files into the web server root
COPY . .

# Expose port for Coolify to bind to
EXPOSE 80

# No need for CMD – nginx default handles it
