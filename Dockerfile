# Use an official base image
FROM ubuntu:latest

# Set the working directory
WORKDIR /app

# Copy the current directory contents into the container
COPY . /app

# Install dependencies
RUN apt-get update && \
    apt-get install -y python3

# Specify the command to run on container start
# CMD ["python3", "app.py"]

# Display Linux version information
CMD ["cat", "/etc/os-release"]
# CMD ["bash"]