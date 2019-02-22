FROM node:6.11-alpine

ENV GETH_HTTP_PROVIDER_ADDRESS="http://localhost:8501"

COPY start.sh /start.sh

RUN apk add --update git python make g++ && \
    npm install -g bower && \
    git clone https://github.com/ryzhak/explorer /app && \
    cd /app && \
    npm install && \
    bower --allow-root install && \
    apk del git python make g++ && \
    rm rm -rf /var/cache/apk/*

# expose port
EXPOSE 8000

CMD ["/bin/sh", "/start.sh"]