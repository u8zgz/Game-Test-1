# Nutze ein minimales Nginx-Image als Basis
FROM nginx:alpine

# Kopiere die index.html in das Standard-Webverzeichnis von Nginx
COPY index.html /usr/share/nginx/html/index.html

# Exponiere Port 80 für den Webserver
EXPOSE 80

# Starte Nginx im Vordergrund
CMD ["nginx", "-g", "daemon off;"]
