FROM n8nio/n8n

# Consider removing these ENV lines for production and setting them in Render's environment variables
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=admin123

EXPOSE 5678

# The ENTRYPOINT should be the n8n executable itself, not the image name.
# Assuming 'n8n' is in the system's PATH within the container.
ENTRYPOINT ["n8n"]
CMD ["start"]

# If 'n8n' is not directly in the PATH, you might need to find its exact location.
# It's often in /usr/local/bin/n8n
# ENTRYPOINT ["/usr/local/bin/n8n"]
# CMD ["start"]
