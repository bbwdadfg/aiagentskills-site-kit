FROM alpine:3.20
LABEL org.opencontainers.image.title="aiagentskills-site-kit"
LABEL org.opencontainers.image.description="Small metadata and URL helpers for AI Agent Skills."
LABEL org.opencontainers.image.url="https://aiagentskills.net"
LABEL org.opencontainers.image.source="https://github.com/bbwdadfg/aiagentskills-site-kit"
LABEL org.opencontainers.image.licenses="MIT"
COPY docker/aiagentskills-site-kit /usr/local/bin/aiagentskills-site-kit
RUN chmod +x /usr/local/bin/aiagentskills-site-kit
ENTRYPOINT ["aiagentskills-site-kit"]
