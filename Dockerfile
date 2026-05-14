# Step 1: Use a very lightweight web server image
FROM nginx:alpine

# Step 2: Set the working directory to where Nginx serves files
WORKDIR /usr/share/nginx/html

# Step 3: Copy all your project files (HTML/CSS/JS) into the container
COPY . .

# Step 4: Open port 80 to allow web traffic
EXPOSE 80

# Step 5: Start Nginx automatically when the container starts
CMD ["nginx", "-g", "daemon off;"]
