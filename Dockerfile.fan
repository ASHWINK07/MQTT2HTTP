# Base image
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy the Python script into the container
COPY fan_device.py /app/

# Install required dependencies (e.g., Paho MQTT)
RUN pip install paho-mqtt

# Command to run the script
CMD ["python3", "fan_device.py"]
