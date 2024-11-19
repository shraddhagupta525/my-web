# Step 1: Use an NGINX image to serve the static website
FROM nginx:alpine

# Step 2: Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Step 3: Remove the default NGINX static files
RUN rm -rf ./*

# Step 4: Copy the static files from the host to the container
COPY . .

# Step 5: Expose port 80 to serve the website
EXPOSE 80

# Step 6: Start NGINX
CMD ["nginx", "-g", "daemon off;"]
