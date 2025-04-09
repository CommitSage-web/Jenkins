# FROM python:3.9-slim
# WORKDIR /app
# COPY app/ .
# RUN pip install flask
# CMD ["python", "app.py"]

# FROM python:3.9-slim

# RUN apt update && \
#     apt install -y openssh-client unzip && \
#     rm -rf /var/lib/apt/lists/*

# WORKDIR /app
# COPY . .

FROM ubuntu:20.04

# Install SSH server
RUN apt update && \
    apt install -y openssh-server unzip && \
    mkdir /var/run/sshd

# Set a password for root (for testing or SCP/SSH login)
RUN echo 'root:root' | chpasswd

# Allow root login (optional but often needed)
RUN sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

# Expose port 22
EXPOSE 22

# Start SSH server
CMD ["/usr/sbin/sshd", "-D"]
