FROM nginx

COPY nginx.conf upstream.tmpl /etc/nginx/

EXPOSE 80

STOPSIGNAL SIGTERM

CMD ["nginx", "-g", "daemon off;"]