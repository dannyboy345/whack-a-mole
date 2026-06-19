FROM python:3.13-alpine
WORKDIR /app
COPY index.html /app/
EXPOSE 3000
CMD ["python3", "-m", "http.server", "3000", "--bind", "0.0.0.0"]
