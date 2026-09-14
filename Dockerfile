FROM freqtradeorg/freqtrade:stable
USER root

ENV PYTHONUNBUFFERED=1

WORKDIR /app
COPY . /app/

ENTRYPOINT ["python3", "-m", "freqtrade", "trade", "--config", "config.json", "--strategy", "SampleStrategy"]
