# =============================================
# Hero Design Network — Dockerfile
# Static site served via nginx:alpine
# =============================================

FROM nginx:alpine

# Remove default nginx static files
RUN rm -rf /usr/share/nginx/html/*

# Copy entire project into nginx html root
COPY . /usr/share/nginx/html/

# Flatten pages/ into root so /about.html works without /pages/about.html
RUN cp /usr/share/nginx/html/pages/*.html /usr/share/nginx/html/

# Copy custom nginx config
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Expose port 80
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
