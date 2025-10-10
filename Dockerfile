FROM ubuntu:22.04

# Prevent interactive prompts during install
ENV DEBIAN_FRONTEND=noninteractive

# Install required packages
RUN apt-get update && apt-get install -y \
    ffmpeg \
    imagemagick \
    jq \
    bc \
    curl \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

# Set default working directory
WORKDIR /workspace

# Verify installation (optional)
RUN ffmpeg -version && convert -version && jq --version
