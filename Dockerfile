# Use the official nginx image as a base
FROM nginx:latest

# Copy the custom nginx configuration into the container,
# replacing the default configuration.
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copy your web files into the container
COPY . /usr/share/nginx/html

# Expose port 8080 (Cloud Run default)
EXPOSE 8080
