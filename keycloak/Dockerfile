FROM quay.io/keycloak/keycloak:latest

# Add curl for healthchecks
USER root
RUN if command -v dnf > /dev/null; then \
    dnf update -y && \
    dnf install -y curl && \
    dnf clean all; \
    elif command -v apt-get > /dev/null; then \
    apt-get update -y && \
    apt-get install -y curl && \
    apt-get clean; \
    elif command -v apk > /dev/null; then \
    apk update && \
    apk add curl && \
    rm -rf /var/cache/apk/*; \
    fi
USER 1000

# Create import directory
RUN mkdir -p /opt/keycloak/data/import

# Copy realm configuration
# Note: You would typically copy your realm files here, but in your docker-compose
# you're mounting them as a volume instead. Uncomment this if you want to build them into the image.
# COPY ./iconne-dici-realm.json /opt/keycloak/data/import/

# Set working directory
WORKDIR /opt/keycloak

# Expose the web port
EXPOSE 8080

# Set the startup command
ENTRYPOINT ["/opt/keycloak/bin/kc.sh"]
CMD ["start", "--import-realm"]