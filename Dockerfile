# 1. Use the ultra-lightweight Nginx web server
FROM nginx:alpine

# 2. Clean out any default Nginx placeholder files
RUN rm -rf /usr/share/nginx/html/*

# 3. FIX: Tell Docker to grab the files FROM INSIDE the sub-folder!
COPY devops-cicd-labs/ /usr/share/nginx/html/

# 4. Open port 80 for web traffic
EXPOSE 80

# 5. Start the server
CMD ["nginx", "-g", "daemon off;"]