# Use the official Python 3.10 image as the base image
FROM python:3.10

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . .


# Install dependencies
RUN pip3 install -r requirements.txt

# Expose port 8080
EXPOSE 8080
# Copy .env file to the container
COPY .env ./.env


# Command to run the application
ENTRYPOINT ["streamlit", "run", "chat_with_site.py", "--server.port=8080", "--server.address=0.0.0.0"]
