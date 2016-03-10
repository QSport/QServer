FROM ubuntu

RUN apt-get -y update
RUN apt-get -y install wget
RUN wget https://bootstrap.pypa.io/get-pip.py
RUN python3 get-pip.py
RUN pip install Django
