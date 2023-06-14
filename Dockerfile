FROM python:3.9-slim

WORKDIR /app

COPY . .

RUN apt-get update && apt-get install -y protobuf-compiler

RUN pip install --no-cache-dir protobuf==3.20 psycopg2-binary SQLAlchemy

ENTRYPOINT ["python", "gtfsrdb.py"]
