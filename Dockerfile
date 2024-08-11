FROM alpine:3.12

# Copy the modified textfile into the Docker image
COPY textfile.txt /textfile.txt

# Optional: Define an entrypoint or CMD if needed
CMD ["cat", "/textfile.txt"]
