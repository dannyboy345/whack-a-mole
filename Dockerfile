FROM python:3.13-alpine
WORKDIR /app
# Force cache miss for new builds
ARG CACHEBUST=1
COPY index.html /app/
EXPOSE 3000
CMD ["python3", "-m", "http.server", "3000", "--bind", "0.0.0.0"]
