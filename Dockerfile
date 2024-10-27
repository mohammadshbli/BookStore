# Use the official Python image from the Docker Hub
FROM python:3.10

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set the working directory
WORKDIR /code

# Copy the requirements file into the image
COPY requirements.txt /code/

# Install the dependencies
RUN pip install -r requirements.txt

# Copy the rest of the application code into the image
COPY . /code/

