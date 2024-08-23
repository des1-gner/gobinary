FROM amazonlinux:2023

# Install git and clone the repository
RUN yum install -y git \
    && git clone https://github.com/des1-gner/gobinary.git

# Install memcached
RUN yum install -y memcached

# Start memcached directly as user 'nobody' (in the background)
RUN memcached -d -u nobody

# Change permissions for necessary files
RUN cd gobinary/root \
    && chmod 777 server.ini \
    && chmod 777 ws-ec2-root
 
EXPOSE 80
EXPOSE 11211
 
CMD sudo ./ws-ec2-root
