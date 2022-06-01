FROM  nvidia/cuda:11.7.0-devel-ubuntu20.04
CMD nvidia-smi

RUN apt-get update && apt-get install --no-install-recommends --no-install-suggests -y curl
RUN apt-get install unzip
RUN apt-get -y install python3
RUN apt-get -y install python3-pip



RUN nvcc --version
RUN echo "print('hello world')" > train_and_eval.py
RUN sleep 30m
CMD ["python3", "train_and_eval.py"]
