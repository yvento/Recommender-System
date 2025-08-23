# Use stable Python 3.9
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy all files into container
COPY . /app

# Install system build tools needed for scikit-surprise
RUN apt-get update && apt-get install -y \
    build-essential \
    gcc \
    g++ \
    && rm -rf /var/lib/apt/lists/*

# Upgrade pip and install dependencies
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Start the app with gunicorn (Render provides $PORT automatically)
CMD gunicorn app:app --bind 0.0.0.0:$PORT


