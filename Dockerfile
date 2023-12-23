From nginx:latest

WORKDIR /usr/share/nginx/html

# Remove the default Nginx static assets
RUN rm -rf ./*

copy . .

Expose 4000


CMD ["nginx", "-g", "daemon off;"]

