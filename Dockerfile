FROM python:3.10-alpine

WORKDIR /code

COPY requirements.txt /code/requirements.txt

RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

COPY ./src /code

CMD ["uvicorn", "api:app", "--host", "0.0.0.0", "--port", "8084"]