FROM python:3
ENV PYTHONUNBUFFERED 1

WORKDIR /tmp
ADD requirements.txt /tmp/
RUN pip install -r requirements.txt