FROM haproxy:2.6
COPY haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg
COPY haproxy.pem /etc/ssl/haproxy.pem
CMD ["haproxy", "-f", "/usr/local/etc/haproxy/haproxy.cfg"]
