# Use a lightweight Python image
FROM mcr.microsoft.com/playwright/python:v1.53.0-jammy



# Set working directory
WORKDIR /app


# Install Python dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt


# Copy the rest of your app
COPY . .

# Expose Streamlit's default port
EXPOSE 8080

# Run the Streamlit app
CMD ["streamlit", "run", "streamlit_app.py", "--server.port=8080", "--server.address=0.0.0.0", "--server.enableCORS=false", "--server.enableXsrfProtection=false","--server.enableWebsocketCompression=false"]
