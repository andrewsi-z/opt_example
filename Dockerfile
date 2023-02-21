# © Copyright IBM Corporation 2022.
# LICENSE: Apache License, Version 2.0 (http://www.apache.org/licenses/LICENSE-2.0)

################ Dockerfile for ONNX conversion lab #################################
#
# This Dockerfile is intended for demonstration purposes to highlight simple 
# scenarios of converting TensorFlow and Torch models to ONNX
#
#####################################################################################

FROM python:3.9-slim

RUN apt update && \
    apt install --no-install-recommends -y build-essential gcc wget && \
    apt clean && rm -rf /var/lib/apt/lists/*
COPY ./requirements.txt /requirements.txt
COPY ./tfonnx_conversion.ipynb /notebooks/

RUN pip3 install --no-cache-dir -r requirements.txt

WORKDIR /notebooks

RUN wget https://storage.googleapis.com/tensorflow_docs/docs/site/en/tutorials/keras/classification.ipynb

CMD jupyter notebook  --allow-root --ip 0.0.0.0 --port 8888