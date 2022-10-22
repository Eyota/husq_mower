FROM python:3.10-slim

ENV LOGIN "aaaa"
ENV PASSWORD "aaaa"

EXPOSE 80

RUN pip install dateutils requests

WORKDIR /usr/src/app

COPY husmow.py .

CMD ["sh", "-c", "python husmow.py --login ${LOGIN} --password ${PASSWORD} server --address 0.0.0.0 --port 80"]