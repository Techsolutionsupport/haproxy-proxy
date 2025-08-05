FROM haproxy:2.6

# Копируем конфиги и сертификаты
COPY haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg
COPY certs/render.pem /etc/ssl/render.pem

# Запускаем HAProxy + простой HTTP-сервер для health-check
CMD sh -c "haproxy -f /usr/local/etc/haproxy/haproxy.cfg & python3 -m http.server 10000"
