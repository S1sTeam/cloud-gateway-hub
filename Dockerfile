FROM alpine:3.20

RUN apk add --no-cache curl bash unzip nginx ca-certificates

COPY nginx.conf /etc/nginx/nginx.conf
COPY public/index.html /var/www/html/index.html
COPY entrypoint.sh /usr/local/bin/entrypoint.sh

RUN chmod +x /usr/local/bin/entrypoint.sh

EXPOSE 10000
CMD ["/usr/local/bin/entrypoint.sh"]
