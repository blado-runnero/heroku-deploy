
FROM ubuntu:latest
RUN apt-get update -y && apt-get install -y python python-dev python-pip python-virtualenv build-essential && rm -rf /var/lib/apt/lists/
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
ENTRYPOINT ["python"]
CMD ["app.py"]