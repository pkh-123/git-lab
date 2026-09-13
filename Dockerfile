FROM alpine:3.24.1

LABEL org.opencontainers.image.source="https://github.com/pkh-123/git-lab"

WORKDIR /network-config

COPY server-info.txt firewall-rules.txt monitoring.conf ./

CMD ["sh", "-c", "echo '=== Server ==='; cat server-info.txt; echo '=== Firewall ==='; cat firewall-rules.txt; echo '=== Monitoring ==='; cat monitoring.conf"]