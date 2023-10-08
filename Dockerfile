# Use a lightweight base image with Nginx
FROM nginx:alpine

# Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Copy all static files to the container
COPY . .

# Expose port 80 (default for HTTP)
EXPOSE 80

# Define the command to start the web server
CMD ["nginx", "-g", "daemon off;"]