FROM ubuntu:latest

# Install httpd
RUN apt-get update && \
    apt-get install -y apache2 && \
    apt-get clean

COPY index.html  /var/www/html

# Expose port 80 (default HTTP port)
EXPOSE 80

# Start the httpd service when the container launches
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
