FROM nginxinc/nginx-unprivileged:1.23-alpine
COPY ./nginx.conf /etc/nginx/nginx.conf
RUN rm -rf /etc/nginx/html/*
COPY ./index.html /etc/nginx/html/index.html
WORKDIR /app
EXPOSE 8080
CMD ["nginx", "-g", "daemon off;"]


