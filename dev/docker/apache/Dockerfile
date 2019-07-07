
FROM httpd:latest
# Copy apache vhost file to proxy php requests to php-fpm container

# Copy apache vhost file to proxy php requests to php-fpm container
COPY dev.conf /usr/local/apache2/conf/demo.apache.conf
RUN echo "Include /usr/local/apache2/conf/demo.apache.conf" \
    >> /usr/local/apache2/conf/httpd.conf


EXPOSE 80 443




