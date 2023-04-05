# Dockerfile with alpine (alpine is always the lightweight image, which wont start/download unnecessary packages automatically)
FROM alpine
WORKDIR /app
COPY secret.txt .
ENTRYPOINT ["tail", "-f", "/dev/null"]
