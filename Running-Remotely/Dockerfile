# How to Run this image
# docker run -it --rm --entrypoint /bin/sh sanketbisne/opentofu-docker-image:v2

# 
FROM alpine:3.18

# Install necessary dependencies including bash
RUN apk add --no-cache \
    curl \
    gnupg \
    ca-certificates \
    bash

# Set environment variables
ENV TOFU_VERSION=latest

# Download the installer script and GPG key
RUN curl --proto '=https' --tlsv1.2 -fsSL https://get.opentofu.org/install-opentofu.sh -o install-opentofu.sh && \
    curl -s https://get.opentofu.org/opentofu.asc | gpg --import

# Give execution permissions and run the installer script
RUN chmod +x install-opentofu.sh && \
    ./install-opentofu.sh --install-method standalone && \
    rm install-opentofu.sh

# Set an entrypoint for the container
ENTRYPOINT ["tofu"]

# Set the default command to run bash
CMD ["/bin/bash"]

