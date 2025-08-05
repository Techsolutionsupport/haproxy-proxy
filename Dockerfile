FROM haproxy:2.6

COPY haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg
COPY certs/render.pem /etc/ssl/render.pem

CMD ["haproxy", "-f", "/usr/local/etc/haproxy/haproxy.cfg"]
