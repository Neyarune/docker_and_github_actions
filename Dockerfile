FROM python:3.12-alpine

LABEL org.opencontainers.image.source="https://github.com/neyarune/docker_and_github_actions.git"

WORKDIR /app

COPY requirements.txt .
RUN apk update && apk upgrade
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["python", "main.py"]