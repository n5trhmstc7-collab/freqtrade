FROM freqtradeorg/freqtrade:stable
USER root

ENV PYTHONUNBUFFERED=1

COPY . /freqtrade/

ENTRYPOINT ["python3", "-m", "freqtrade", "trade", "--config", "config.json", "--strategy", "SampleStrategy"]
