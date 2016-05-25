FROM python:2.7

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY *.py /usr/src/app/
RUN pip install /usr/src/app/

CMD ["awsesd"]
