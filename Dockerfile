FROM python:3.7.5-alpine3.10
RUN adduser -D pythonuser && mkdir /app && chown -R pythonuser /app
COPY requirements.txt /app
WORKDIR /app
RUN pip install -r requirements.txt
USER pythonuser
COPY app.py /app
CMD ["python", "/app/app.py"]
