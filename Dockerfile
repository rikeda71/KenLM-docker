FROM python:3.7

WORKDIR /

RUN apt update && apt install -q -y \
    gcc \
    g++ \
    git \
    wget \
    build-essential \
    libboost-all-dev \
    cmake \
    zlib1g-dev \
    libbz2-dev \
    liblzma-dev \
    python3-dev \
    && git clone https://github.com/kpu/kenlm \
    && cd kenlm \
    && mkdir -p build && cd build \
    && cmake .. \
    && make -j 4 \
    && pip install -U pip \
    && pip install git+https://github.com/kpu/kenlm.git \
    && apt clean \
    && rm -rf ~/.cache \
    && rm -rf /var/lib/apt/lists/*
