# Use a base Python image
FROM python:3.9-slim-buster

# Set the working directory in the container
WORKDIR /app

# Copy the project files into the container
COPY . /app

# Install system dependencies if needed (e.g., for webapp_docker.sh)
# RUN apt-get update && apt-get install -y --no-install-recommends \
#     nodejs \
#     npm \
#     && rm -rf /var/lib/apt/lists/*

# Make the webapp_docker.sh script executable
RUN chmod +x webapp_docker.sh

# Command to run the application using webapp_docker.sh
CMD ["./webapp_docker.sh"]