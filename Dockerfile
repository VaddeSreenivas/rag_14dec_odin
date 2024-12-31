# Use a valid Python base image
FROM python:3.12.6

#Set the working directory inside the container
WORKDIR /app

# Copy application files to the container
COPY . /app

# Install dependencies from requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port streamlit will run on 
Expose 8080

# Define the default command to run the Streamlit app
CMD ["streamlit","run","app2.py","--server.port = 8080","--server.address=0.0.0.0"]

