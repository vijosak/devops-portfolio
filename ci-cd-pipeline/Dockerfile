FROM python:3.11-slim
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN apt-get update && apt-get install -y --no-install-recommends postgresql-client && rm -rf /var/lib/apt/lists/*

WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
RUN chmod +x wait-for-db.sh

EXPOSE 8000

# Run migrations then start gunicorn
CMD ["./wait-for-db.sh", "db", "5432", "portfolio", "portfolio123", "sh", "-c", "python portfolio/manage.py migrate && gunicorn portfolio.portfolio.wsgi:application --bind 0.0.0.0:8000"]
