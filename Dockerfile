FROM python:3.11-slim
LABEL authors="dmitriipetlin"

WORKDIR /ZeroBot
COPY requirements.txt /ZeroBot

ENV PYTHONPATH = /ZeroBot

RUN pip install -r requirements.txt

COPY . /ZeroBot

EXPOSE 8000

ENV PYTHONUNBUFFERED=1
ENV PYTHONPATH = "${PYTHONPATH}:/ZeroBot"


CMD ["python", "main_open_ai.py"]