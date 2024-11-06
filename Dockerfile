FROM python:3-alpine

WORKDIR /data
COPY requirements.txt .
COPY start.py .

RUN apk update && apk install sqlite \
    openssl \
    zlib \
    ca-certificates \
    readline \
    libgcc \
    libffi \
    xz \
    ncurses \
    libgomp \
    tk && \
    pip install -r requirements.txt

ENTRYPOINT ["python3", "start.py"]
