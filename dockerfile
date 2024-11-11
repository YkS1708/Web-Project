FROM nginx:latest

# Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Copy the local HTML file into the container's Nginx directory
COPY index.html .

# Expose port 80 to access the app via HTTP
EXPOSE 80

# Run the Nginx server when the container starts
CMD ["nginx", "-g", "daemon off;"]
