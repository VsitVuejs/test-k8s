FROM python:3.11-alpine

COPY src/requirements.txt /tmp/requirements.txt

RUN pip install -r /tmp/requirements.txt

COPY src/app.py /var/server/app.py

ENTRYPOINT ["python", "/var/server/app.py"]
