# Use an official Nginx image to serve static content
FROM nginx:latest

# Set the working directory to /usr/share/nginx/html
WORKDIR /usr/share/nginx/html

# Remove the default Nginx page
RUN rm -rf ./*

# Copy your website's files into the container
COPY . .

# Expose port 80 to make the website accessible
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]
