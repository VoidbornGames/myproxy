FROM alpine:latest

RUN apk add --no-cache tinyproxy

# Copy custom config
COPY tinyproxy.conf /etc/tinyproxy/tinyproxy.conf

# Expose the proxy port
EXPOSE 8888

# Run tinyproxy in foreground
CMD ["tinyproxy", "-d"]
