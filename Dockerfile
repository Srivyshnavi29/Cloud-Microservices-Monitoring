 # Use Python as the base image (modify based on your app)
FROM python:3.9

# Set working directory
WORKDIR /app

# Copy project files
COPY app.py /app/app.py

# Install dependencies (modify if needed)
COPY requirements.txt /app/requirements.txt
RUN pip install -r requirements.txt

# Expose the correct port (modify if needed)
EXPOSE 8080

# Run the application
CMD ["python", "app.py"]
