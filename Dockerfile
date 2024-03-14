FROM python:3.10-alpine

WORKDIR /src

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY ./src ./src

EXPOSE 8000

CMD ["python", "src/main.py"]