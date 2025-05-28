# Use Nginx base image
FROM nginx:alpine

# Remove default static files
RUN rm -rf /usr/share/nginx/html/*

# Copy the built Angular portfolio app
COPY dist/portfolio/browser /usr/share/nginx/html

# Expose Nginx port
EXPOSE 80

# Run Nginx in foreground
CMD ["nginx", "-g", "daemon off;"]

