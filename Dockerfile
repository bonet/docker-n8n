FROM n8nio/n8n:latest

# Switch to root user for installation
USER root

# Install ffmpeg using Alpine's package manager
RUN apk add --no-cache ffmpeg

# Switch back to node user
USER node

# Verify ffmpeg installation
RUN ffmpeg -version
