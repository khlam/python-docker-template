# debian nvidia-cuda
#FROM ghcr.io/khlam/docker-pytorch/pyt:latest as base

# alpine linux python3.8
FROM ghcr.io/khlam/py/py:3.8 as base

ARG DEBIAN_FRONTEND=noninteractive

# (debian) install dependencies for opencv 
# RUN apt-get update && apt-get install -y python3-opencv

WORKDIR /app

COPY ./requirements.txt /app/requirements.txt
RUN pip install -r requirements.txt

ENTRYPOINT ["python3", "main.py"]