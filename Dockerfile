FROM python:3-alpine

WORKDIR /data
COPY requirements.txt .
COPY start.py .

RUN apk update && apk add sqlite \
    openssl \
    zlib \
    ca-certificates \
    readline \
    libgcc \
    libffi \
    xz \
    ncurses \
    libgomp \
    gcc \
    tk && \
    pip install -r requirements.txt

ENTRYPOINT ["python3", "start.py"]
