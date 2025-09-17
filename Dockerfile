# Start from official nginx base image
FROM nginx:latest

# Create a custom HTML page
RUN echo '<h1>Hello, I am Abhishek Mishra </h1><p>This is a custom Nginx Docker image.</p>' \
    > /usr/share/nginx/html/index.html

# Expose default nginx port
EXPOSE 80

