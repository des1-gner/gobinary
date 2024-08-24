FROM amazonlinux:2023

# Install git and clone the repository
RUN yum install -y git \
    && git clone https://github.com/des1-gner/gobinary.git

# Set working directory to where server.ini is located
WORKDIR /gobinary/lookup

# Ensure proper file permissions
RUN chmod 755 server.ini \
    && chmod 755 ws-ec2-lookup

# Expose necessary ports
EXPOSE 80
EXPOSE 5432

# Run the application
CMD ./ws-ec2-lookup
