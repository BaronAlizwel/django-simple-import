FROM python:3.7-slim
ENV PYTHONUNBUFFERED 1

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY setup.py /usr/src/app/
RUN pip install -e .[ods,xlsx,xls]

COPY . /usr/src/app
