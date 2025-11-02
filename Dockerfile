# Use a small official Python base image
FROM python:3.11-slim

# Set working directory inside the container
WORKDIR /app

# Copy requirement list and install them
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of your app code
COPY . .

# Expose port 8080 for Flask
EXPOSE 8080

# Command to start the app
CMD ["python", "app.py"]
