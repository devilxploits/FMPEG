# ✅ Base image with FFmpeg, ImageMagick, jq, curl, and bc preinstalled
FROM ubuntu:22.04

RUN apt-get update && \
    apt-get install -y ffmpeg imagemagick jq bc curl && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /app

# Default command (can be overridden by GitHub Action)
CMD ["bash"]
