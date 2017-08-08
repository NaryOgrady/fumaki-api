FROM ubuntu:12.04
MAINTAINER Skablam
RUN apt-get -qq update
RUN apt-get -qqy install python python-pip
RUN mkdir /code
WORKDIR /code
ADD fumaki/* /code/
RUN pip install -r requirements.txt
EXPOSE 5000
CMD python fumaki/app.py
