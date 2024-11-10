# Use a base Python image
FROM python:3.9.20

# Set working directory in the container
WORKDIR /app

# Copy the requirements file and install dependencies
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy necessary files into the container
COPY app.py /app
COPY MLR_model.pkl /app
COPY scaler.pkl /app

# Copy the templates directory with HTML files
COPY templates /app/templates

# Expose the port Flask will run on
EXPOSE 8080

# Command to run the Flask application
CMD ["python", "app.py"]
