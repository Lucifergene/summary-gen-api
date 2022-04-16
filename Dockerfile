FROM bitnami/pytorch:1.10.0

WORKDIR /app

COPY requirements.txt /app/requirements.txt

COPY . /app

RUN pip install -r requirements.txt

EXPOSE 8000

ENTRYPOINT ["uvicorn", "server:app", "--reload"]


