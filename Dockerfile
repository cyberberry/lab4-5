# Використовуємо офіційний образ Nginx
FROM nginx

# Копіюємо конфігураційний файл Nginx
COPY nginx.conf /etc/nginx/nginx.conf

# Копіюємо файли веб-застосунку в директорію /usr/share/nginx/html
COPY index.html /usr/share/nginx/html/
COPY style.css /usr/share/nginx/html/
