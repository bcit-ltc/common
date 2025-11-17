# Dockerfile

## Release
FROM nginxinc/nginx-unprivileged:alpine3.22-perl

LABEL maintainer=courseproduction@bcit.ca
LABEL org.opencontainers.image.source=https://github.com/bcit-ltc/cdn
LABEL org.opencontainers.image.description="Content delivery and proxy service for static assets and third-party API routing."

COPY conf.d/default.conf /etc/nginx/conf.d/default.conf
COPY /src /usr/share/nginx/html/
