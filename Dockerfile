FROM python:3.10-alpine

WORKDIR /app

RUN echo "Hello world" > hello.html

USER 1001

CMD ["python", "-m", "http.server", "8000"]
