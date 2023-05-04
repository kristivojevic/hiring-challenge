FROM python:3.11.3-alpine

COPY . .

RUN pip3 install flask

EXPOSE 14450/tcp

CMD ["python3", "app.py"]
