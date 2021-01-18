FROM jupyter/all-spark-notebook:latest

COPY ./requirements.txt /tmp/
RUN pip install -r /tmp/requirements.txt
