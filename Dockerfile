# Use an official Python image from Docker Hub
FROM python:3.12-slim

# Set the working directory in the container
WORKDIR /app

RUN pip3 install flask

# Copy the rest of the app code into the container
COPY ./app.py .
# Expose the port Flask runs on

# Run the Flask app
CMD ["python", "app.py"]