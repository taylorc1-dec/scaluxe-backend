FROM ubuntu:22.04

RUN apt-get update && \
    apt-get install -y python3 python3-pip git && \
    pip3 install fastapi uvicorn

WORKDIR /app
RUN git clone https://github.com/taylorc1-dec/scaluxe-backend.git

WORKDIR /app/scaluxe-backend/src
CMD ["python3", "main.py"]
