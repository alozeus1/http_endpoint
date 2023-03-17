FROM python:3.9-slim

WORKDIR /app

COPY http_endpoint .
RUN pip install --no-cache-dir -r requirements.txt

COPY app.py .

CMD [ "python", "http_endpoint.py" ]

