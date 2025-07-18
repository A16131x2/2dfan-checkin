FROM python:3.13.5-alpine

WORKDIR /app

ADD requirements.txt /app/requirements.txt

RUN python -m pip install -r requirements.txt

ADD . .

ENTRYPOINT python main.py
