FROM amazonlinux:2023

# Install git and clone the repository
RUN yum install -y git \
    && git clone https://github.com/des1-gner/gobinary.git

# Change permissions for necessary files
RUN cd gobinary/lookup \
    && chmod 777 server.ini \
    && chmod 777 ws-ec2-lookup
 
EXPOSE 80
EXPOSE 5432
 
CMD sudo ./ws-ec2-lookup
