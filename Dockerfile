FROM python:3.9-slim

WORKDIR /app
COPY . /app

# System build tools for scikit-surprise
RUN apt-get update && apt-get install -y \
    build-essential \
    gcc \
    g++ \
    && rm -rf /var/lib/apt/lists/*

# Upgrade pip
RUN pip install --upgrade pip

# Preinstall numpy & cython to ensure scikit-surprise builds against NumPy 1.26
RUN pip install "numpy==1.26.4" "Cython==0.29.37"

# Now install the rest
RUN pip install -r requirements.txt

# Start the app
CMD gunicorn app:app --bind 0.0.0.0:$PORT
