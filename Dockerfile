# Use the official Python image as the base image
FROM python:3.11-slim

# Set environment variables for better readability
ENV APP_HOME=/app \
    PATH="/home/app/.local/bin:${PATH}" \
    PYTHONPATH="/home/app/.local/bin:/app:${PYTHONPATH}"

# Create the application directory and set it as the working directory
WORKDIR $APP_HOME
RUN mkdir /data

# Copy the local code to the container
COPY . $APP_HOME

# Install latest version of autogenstudio
RUN pip install autogenstudio

# Confirm installation
RUN autogenstudio version

# Set the default command for the container
ENTRYPOINT ["autogenstudio", "ui", "--host", "0.0.0.0", "--port", "8081", "--appdir","/data"]
