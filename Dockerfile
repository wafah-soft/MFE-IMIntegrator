FROM nginx:alpine

WORKDIR /usr/share/nginx/html

COPY importmap.json .
COPY default.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD [ "nginx", "-g", "daemon off;" ]