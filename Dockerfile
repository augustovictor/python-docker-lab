FROM python:3.6-alpine

EXPOSE 5000

ENV FLASK_APP=hello.py

ARG DIR=/usr/app/hello_app

RUN mkdir -p ${DIR}

WORKDIR ${DIR}

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . .

CMD ["flask", "run", "--host", "0.0.0.0"]