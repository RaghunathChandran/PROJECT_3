FROM python:3.7-slim-buster

WORKDIR /app
EXPOSE 5050
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

CMD [ "python", "-m" , "flask", "run", "--host=0.0.0.0" ]
