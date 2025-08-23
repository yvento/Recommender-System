# Use stable Python 3.9 base image
FROM python:3.9-slim

# Set working directory inside the container
WORKDIR /app

# Copy project files into the container
COPY . /app

# Upgrade pip and install dependencies
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Command to start the app on Render
CMD gunicorn app:app --bind 0.0.0.0:$PORT
