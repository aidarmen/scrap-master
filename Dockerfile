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
EXPOSE 80

# Run the Streamlit app
CMD ["streamlit", "run", "streamlit_app.py", "--server.port=80", "--server.address=0.0.0.0"]
