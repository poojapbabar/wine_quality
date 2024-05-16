FROM python:3.8-slim-buster

RUN apt-get update -y && apt-get install -y awscli

WORKDIR /app

# Copy the entire project directory into the container
COPY . /app

# Exclude README.md from being copied into the container
# COPY docs/README.md /tmp
# COPY docs/README.md /tmp
COPY README.md /tmp


# Install Python dependencies
RUN pip install -r requirements.txt

# Specify the command to run your application
CMD ["python3", "app.py"]
