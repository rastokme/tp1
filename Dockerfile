# File: ~/tp1/httpd/Dockerfile

FROM httpd:2.4

# Ensure proper permissions
RUN mkdir -p /usr/local/apache2/logs && \
    chmod -R 777 /usr/local/apache2/logs

# Copy custom configuration file
COPY my-httpd.conf /usr/local/apache2/conf/httpd.conf

# Copy the landing page
COPY index.html /usr/local/apache2/htdocs/
