FROM freqtradeorg/freqtrade:stable
USER root
COPY start.sh /freqtrade/start.sh
RUN chmod +x /freqtrade/start.sh
USER ftuser
ENTRYPOINT ["/bin/bash", "/freqtrade/start.sh"]
