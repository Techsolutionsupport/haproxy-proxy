FROM haproxy:latest
COPY haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg
COPY certs/render.pem /etc/ssl/render.pem
