# 1. Start with a base image that already has Python installed
FROM python:3.11-slim

# 2. Set a working directory inside the container
WORKDIR /app

# 3. Copy your project files from GitHub into the container
COPY . /app

# 4. (Optional) Install any requirements if you have a requirements.txt
# RUN pip install -r requirements.txt

# 5. Tell Docker what command to run when the container starts
CMD ["python", "hello.py"]
