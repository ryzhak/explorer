#!/usr/bin/env sh

: ${GETH_HTTP_PROVIDER_ADDRESS:="http://localhost:8501"}

cd /app
sed -i -e "s|{GETH_HTTP_PROVIDER_ADDRESS}|$GETH_HTTP_PROVIDER_ADDRESS|" app/app.js

npm start