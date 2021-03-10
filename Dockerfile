FROM ubuntu:latest
RUN mkdir /flask_app
WORKDIR /flask_app
COPY pyproject /flask_app
RUN apt-get clean && apt-get update -y &&  apt-get install python3-venv -y  && apt-get install python3-pip -y
RUN python3 -m venv venv
RUN /bin/bash -c "source venv/bin/activate"
RUN pip3 install Flask
RUN apt-get install mysql-server -y  && apt-get install libmysqlclient-dev -y
RUN pip3 install flask-mysqldb
RUN export FLASK_APP=app.py
EXPOSE 5000
CMD ["python3", "app.py"]
