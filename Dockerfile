FROM python:3.11-slim
LABEL authors="dmitriipetlin"

WORKDIR /
COPY requirements.txt /

ENV PYTHONPATH = /

RUN pip install -r requirements.txt

COPY . /

EXPOSE 8000

ENV PYTHONUNBUFFERED=1
ENV PYTHONPATH = "${PYTHONPATH}:/"


CMD ["python", "main_open_ai.py"]