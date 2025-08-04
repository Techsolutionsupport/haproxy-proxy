FROM haproxy:2.6

# Устанавливаем Python для dummy HTTP-сервера (health check)
RUN apt-get update && apt-get install -y python3 && apt-get clean

# Копируем конфиги
COPY haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg
COPY certs/render.pem /etc/ssl/render.pem

# Запускаем HAProxy + dummy HTTP-сервер для Render health-check
CMD haproxy -f /usr/local/etc/haproxy/haproxy.cfg & \
    python3 -m http.server ${PORT:-10000}
