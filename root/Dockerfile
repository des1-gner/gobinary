FROM amazonlinux:2023

# Install git, memcached, and clone the repository
RUN yum install -y git memcached \
    && git clone https://github.com/des1-gner/gobinary.git

# Set working directory to where server.ini is located
WORKDIR /gobinary/root

# Ensure proper file permissions
RUN chmod 755 server.ini \
    && chmod 755 ws-ec2-root

# Expose the necessary ports
EXPOSE 80
EXPOSE 11211

# Start both memcached and the Go application using a startup script
CMD ["sh", "-c", "memcached -u nobody & ./ws-ec2-root"]
