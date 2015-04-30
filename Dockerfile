FROM nginx
COPY nginx.conf /etc/nginx/nginx.conf
COPY entry.sh /home/entry.sh

CMD /home/entry.sh