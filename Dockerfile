# Use the official Nginx image from the Docker Hub
FROM nginx:alpine

# Copy the HTML files to the Nginx default directory
COPY . /usr/share/nginx/html

# Expose port 80 to the outside world
EXPOSE 80

# Start Nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]

LABEL org.opencontainers.image.source=https://github.com/antoinegelloz/rickroll
LABEL org.opencontainers.image.description="Let's rickroll"