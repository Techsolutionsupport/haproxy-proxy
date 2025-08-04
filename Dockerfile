FROM haproxy:2.6
COPY haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg
EXPOSE 8443
CMD ["haproxy", "-f", "/usr/local/etc/haproxy/haproxy.cfg", "-db"]
