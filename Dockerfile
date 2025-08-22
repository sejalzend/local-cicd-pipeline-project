FROM python:3.9-slim

WORKDIR /app

# Copy requirements first for better caching
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the app directory into the container
COPY app/ ./app/

EXPOSE 8000

ENV NAME World

# Run the application
CMD ["python", "-m", "app.main"]
