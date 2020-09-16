FROM nginx:latest 
MAINTAINER mavrick202@gmail.com 
RUN apt install -y curl
COPY index.html /usr/share/nginx/html/
COPY index.js /usr/share/nginx/html/
COPY styles.css /usr/share/nginx/html/
COPY images /usr/share/nginx/html/
COPY sounds /usr/share/nginx/html/
#HEALTHCHECK CMD curl --fail http://localhost || exit 1
CMD ["nginx", "-g", "daemon off;"]
