# Use an official Nginx image as the base image
FROM nginx:alpine

# Copy the HTML and CSS files to the Nginx HTML directory
COPY index.html /usr/share/nginx/html/index.html
COPY style.css /usr/share/nginx/html/style.css

# Expose port 80 to the outside world
EXPOSE 80

# Start Nginx when the container has started
CMD ["nginx", "-g", "daemon off;"]
