FROM ubuntu

RUN mkdir qsport
WORKDIR qsport
RUN apt-get -y update
RUN apt-get -y install wget
RUN apt-get -y install git
RUN apt-get -y install postgresql
RUN wget https://bootstrap.pypa.io/get-pip.py
RUN python3 get-pip.py
RUN pip install django
RUN pip install channels
RUN git clone https://github.com/QSport/QServer.git
