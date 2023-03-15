#parent image -- from docker hub
# pull python 1st
FROM python:3.11.2

WORKDIR /app

COPY requirements.txt ./
RUN pip install -r requirements.txt

COPY main.py ./

CMD ["python", "./main.py"]