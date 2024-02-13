FROM ubuntu:latest

# Install necessary tools and dependencies
RUN apt-get update && \
    apt-get install -y \
        build-essential \
        python3 \
        python3-pip \
        git \
        nano \
        curl \
        && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Set the default shell to bash
RUN ln -snf /bin/bash /bin/sh
