# docker build -f Dockerfile -t <REGISTRY_ADDRESS_INCLUDING_PORT>/<CONTAINER_NAME>:<CONTAINER_TAG | latest> --no-cache .
# docker image push <REGISTRY_ADDRESS_INCLUDING_PORT>/<CONTAINER_NAME>:<CONTAINER_TAG | latest>

FROM python:3.11.2-slim-buster as base

ARG DEBIAN_FRONTEND=noninteractive

# (debian) install dependencies for opencv 
# RUN apt-get update && apt-get install -y python3-opencv

WORKDIR /app

COPY ./requirements.txt /app/requirements.txt
RUN pip install -r requirements.txt

ENTRYPOINT ["python3", "main.py"]