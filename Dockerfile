FROM python

WORKDIR /opt

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

COPY app.py /opt/app.py

EXPOSE 8080

ENTRYPOINT ["python3", "app.py"]

