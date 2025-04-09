FROM python:3.9-slim
WORKDIR /app
COPY app/ .
RUN pip install flask
CMD ["python", "app.py"]

# FROM python:3.9-slim

# RUN apt update && \
#     apt install -y openssh-client unzip && \
#     rm -rf /var/lib/apt/lists/*

# WORKDIR /app
# COPY . .
