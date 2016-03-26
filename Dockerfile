FROM debian

RUN apt-get -y update
RUN apt-get -y install postgresql git python3 unzip
ADD https://bootstrap.pypa.io/get-pip.py ./
RUN python3 get-pip.py
RUN pip install django

RUN mkdir qsport
WORKDIR qsport
ADD https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip ./
RUN unzip ngrok-stable-linux-amd64.zip
