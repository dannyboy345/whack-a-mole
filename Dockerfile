FROM python:3.13-alpine
WORKDIR /app
COPY index.html /app/
EXPOSE 3000
# cache bust: 2026-06-19-1131
CMD ["python3", "-m", "http.server", "3000", "--bind", "0.0.0.0"]
