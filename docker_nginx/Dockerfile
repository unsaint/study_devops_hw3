FROM nginx:alpine

VOLUME /usr/share/nginx/html

COPY template /tmp/template
COPY entrypoint.sh /entrypoint.sh
COPY nginx.conf /etc/nginx

ENTRYPOINT ["/entrypoint.sh"]

CMD ["nginx", "-g","daemon off;"]

