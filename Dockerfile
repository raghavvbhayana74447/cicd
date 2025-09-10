# Use official Python base image
FROM python:3.11-slim

# Set working directory inside container
WORKDIR /home/raghav/jenkins/workspace/pythonapp

# Copy your calculator script into the container
COPY calculator.py .

# Default command to run your script
CMD ["python", "calculator.py"]
