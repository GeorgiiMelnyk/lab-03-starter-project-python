FROM python:3.9-slim

WORKDIR /app
COPY requirements requirements
RUN python -m venv venv
RUN venv/bin/pip install -r requirements/backend.txt

COPY . .

CMD ["venv/bin/uvicorn", "spaceship.main:app", "--host=0.0.0.0", "--port=8080"]