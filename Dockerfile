# # FROM alpine:3.12

# # # Copy the modified textfile into the Docker image
# # COPY textfile.txt /textfile.txt

# # # Optional: Define an entrypoint or CMD if needed
# # CMD ["cat", "/textfile.txt"]

# FROM alpine:3.12

# # Copy the entrypoint script into the container
# COPY entrypoint.sh /entrypoint.sh

# # Ensure the script is executable
# RUN chmod +x /entrypoint.sh

# # Specify the entrypoint
# ENTRYPOINT ["/entrypoint.sh"]

FROM alpine:3.12

# Copy the entrypoint script into the container
COPY .github/actions/change-tag/entrypoint.sh /entrypoint.sh

# Copy the textfile into the Docker image
COPY textfile.txt /textfile.txt

# Ensure the entrypoint script is executable
RUN chmod +x /entrypoint.sh

# Specify the entrypoint
ENTRYPOINT ["/entrypoint.sh"]

