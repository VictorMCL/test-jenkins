FROM ubuntu:16.04

RUN apt-get update
RUN apt-get install python python-pip -y
RUN mkdir /opt/app
COPY src/app.py /opt/app/
COPY requirements.txt /opt/app/
RUN pip install --upgrade -r /opt/app/requirements.txt
COPY docker-entrypoint.sh /

EXPOSE 5000
ENTRYPOINT "/docker-entrypoint.sh"
