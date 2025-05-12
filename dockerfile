FROM n8nio/n8n:latest

# Optional packages
RUN apk add --no-cache graphicsmagick tzdata

USER root
WORKDIR /data

ENV N8N_PORT=${PORT} \
    N8N_USER_ID=root

EXPOSE ${PORT}
CMD ["n8n", "start"]
