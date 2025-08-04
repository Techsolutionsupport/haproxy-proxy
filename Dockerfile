FROM haproxy:2.6

# Копируем конфиг HAProxy
COPY haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg

# Копируем сертификат из папки certs в контейнер
COPY certs/render.pem /etc/haproxy/certs/render.pem

CMD ["haproxy", "-f", "/usr/local/etc/haproxy/haproxy.cfg"]
