FROM openresty/openresty:alpine-fat

COPY ./conf/default.conf /etc/nginx/conf.d/default.conf

RUN apk add openssl-dev bsd-compat-headers m4

RUN luarocks install http

CMD ["/usr/local/openresty/bin/openresty", "-g", "daemon off;"]
