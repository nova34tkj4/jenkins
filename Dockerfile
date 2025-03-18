# Use the official Nginx image from Docker Hub as a base image
FROM nginx:latest

# Copy a custom HTML file into the container (optional)
# Replace `index.html` with your own file if you want to serve custom content
COPY index.html /usr/share/nginx/html/

# Expose port 80 to make the container accessible on the web
EXPOSE 80

# Start Nginx in the foreground (default command)
CMD ["nginx", "-g", "daemon off;"]
