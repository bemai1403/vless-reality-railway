FROM debian:stable-slim

RUN apt-get update && \
    apt-get install -y curl unzip && \
    curl -L -o xray.zip https://github.com/XTLS/Xray-core/releases/latest/download/Xray-linux-64.zip && \
    unzip xray.zip && mv xray /usr/local/bin/xray && chmod +x /usr/local/bin/xray && \
    rm -rf xray.zip && apt-get clean

COPY config.json /etc/xray/config.json
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

EXPOSE 443
CMD ["/entrypoint.sh"]
