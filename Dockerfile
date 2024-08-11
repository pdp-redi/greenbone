# Use an official base image
FROM ubuntu:latest

# Set the working directory in the container
WORKDIR /app

# Copy the text file into the container
COPY your-file.txt .

# Command to run when the container starts
CMD ["cat", "your-file.txt"]

