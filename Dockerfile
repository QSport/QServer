FROM debian
#FROM resin/rpi-raspbian

RUN apt-get -y update
RUN apt-get -y install postgresql git python3 unzip
ADD https://bootstrap.pypa.io/get-pip.py ./
RUN python3 get-pip.py
RUN pip install django
RUN pip install channels

RUN mkdir qsport
WORKDIR qsport/qserver
ENTRYPOINT ["python3", "manage.py"]
CMD ["runserver", "0.0.0.0:8000"]
