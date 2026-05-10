FROM python:3.11-slim
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
ENV DJANGO_SETTINGS_MODULE=portfolio.settings

RUN apt-get update && apt-get install -y --no-install-recommends postgresql-client curl && rm -rf /var/lib/apt/lists/*

WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
RUN chmod +x wait-for-db.sh

EXPOSE 8000

# Use environment variables for the database connection
CMD ["sh", "-c", "./wait-for-db.sh db 5432 ${DB_USER} ${DB_PASSWORD} gunicorn portfolio.wsgi:application --bind 0.0.0.0:8000"]
