# Use a small, lightweight Linux base image
FROM alpine:latest

# Copy everything from your GitHub repo into the container
COPY . /app

# Set the working directory
WORKDIR /app

# Run a simple command when the container starts
CMD ["sh", "-c", "echo Hello from Docker container! && ls"]
