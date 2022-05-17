FROM openresty/openresty:alpine-fat

COPY ./conf/nginx.conf /etc/nginx/conf.d/default.conf

CMD ["/usr/local/openresty/bin/openresty", "-g", "daemon off;"]
