FROM python:3.8-slim-bullseye

WORKDIR /app

COPY . /app

RUN apt-get update && \
    apt-get install -y ffmpeg libsm6 libxext6 && \
    pip install -r requirements.txt \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

CMD ["python", "app.py"]
